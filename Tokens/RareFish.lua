local bint = require('.bint')(256)
local ao = require('ao')
--[[
  This module implements the ao Standard Token Specification.

  Terms:
    Sender: the wallet or Process that sent the Message

  It will first initialize the internal state, and then attach handlers,
    according to the ao Standard Token Spec API:

    - Info(): return the token parameters, like Name, Ticker, Logo, and Denomination

    - Balance(Target?: string): return the token balance of the Target. If Target is not provided, the Sender
        is assumed to be the Target

    - Balances(): return the token balance of all participants

    - Transfer(Target: string, Quantity: number): if the Sender has a sufficient balance, send the specified Quantity
        to the Target. It will also issue a Credit-Notice to the Target and a Debit-Notice to the Sender

    - Mint(Quantity: number): if the Sender matches the Process Owner, then mint the desired Quantity of tokens, adding
        them the Processes' balance
]]
--
local json = require('json')

--[[
  utils helper functions to remove the bint complexity.
]]
--


local utils = {
    add = function(a, b)
        return tostring(bint(a) + bint(b))
    end,
    subtract = function(a, b)
        return tostring(bint(a) - bint(b))
    end,
    toBalanceValue = function(a)
        return tostring(bint(a))
    end,
    toNumber = function(a)
        return tonumber(a)
    end
}


--[[
     Initialize State

     ao.id is equal to the Process.Id
   ]]
--
Variant = "0.0.3"

Gameplay = "sZe_mf4uJs1khzh0QZmNnaxdoXtBa51LRh2uhnDyk3Y"
Name = Name or 'Aqualandia Rare Fish Token'
Ticker = Ticker or 'ARF'
Denomination = 0
Logo = '0YvImePvbT6MsCDf_LgOwICnLOiDVDYZX4dRcHGFqXc'
GrantWhitelist = {
    [Gameplay] = true,
}

-- Don't overwrite TotalSupply or Balances
TotalSupply = TotalSupply or utils.toBalanceValue(0)
Balances = Balances or { [ao.id] = utils.toBalanceValue(0) }

--[[
     Add handlers for each incoming Action defined by the ao Standard Token Specification
   ]]
--

--[[
     Info
   ]]
--
Handlers.add('info', Handlers.utils.hasMatchingTag('Action', 'Info'), function(msg)
    ao.send({
        Target = msg.From,
        Name = Name,
        Ticker = Ticker,
        Logo = Logo,
        Denomination = tostring(Denomination)
    })
end)

--[[
     Balance
   ]]
--
Handlers.add('balance', Handlers.utils.hasMatchingTag('Action', 'Balance'), function(msg)
    local bal = '0'

    -- If not Recipient is provided, then return the Senders balance
    if (msg.Tags.Recipient and Balances[msg.Tags.Recipient]) then
        bal = Balances[msg.Tags.Recipient]
    elseif msg.Tags.Target and Balances[msg.Tags.Target] then
        bal = Balances[msg.Tags.Target]
    elseif Balances[msg.From] then
        bal = Balances[msg.From]
    end

    ao.send({
        Target = msg.From,
        Balance = bal,
        Ticker = Ticker,
        Account = msg.Tags.Recipient or msg.From,
        Data = bal
    })
end)

--[[
     Balances
   ]]
--
Handlers.add('balances', Handlers.utils.hasMatchingTag('Action', 'Balances'),
    function(msg) ao.send({ Target = msg.From, Data = json.encode(Balances) }) end)

--[[
     Transfer
   ]]
--
Handlers.add('transfer', Handlers.utils.hasMatchingTag('Action', 'Transfer'), function(msg)
    assert(type(msg.Tags.Recipient) == 'string', 'Recipient is required!')
    assert(type(msg.Tags.Quantity) == 'string', 'Quantity is required!')
    assert(bint.__lt(0, bint(msg.Tags.Quantity)), 'Quantity must be greater than 0')

    if not Balances[msg.From] then Balances[msg.From] = "0" end
    if not Balances[msg.Tags.Recipient] then Balances[msg.Tags.Recipient] = "0" end

    if bint(msg.Tags.Quantity) <= bint(Balances[msg.From]) then
        Balances[msg.From] = utils.subtract(Balances[msg.From], msg.Tags.Quantity)
        Balances[msg.Tags.Recipient] = utils.add(Balances[msg.Tags.Recipient], msg.Tags.Quantity)

        --[[
         Only send the notifications to the Sender and Recipient
         if the Cast tag is not set on the Transfer message
       ]]
        --
        if not msg.Cast then
            -- Debit-Notice message template, that is sent to the Sender of the transfer
            local debitNotice = {
                Target = msg.From,
                Action = 'Debit-Notice',
                Recipient = msg.Recipient,
                Quantity = msg.Quantity,
                Data = Colors.gray ..
                    "You transferred " ..
                    Colors.blue .. msg.Quantity .. Colors.gray .. " to " .. Colors.green .. msg.Recipient .. Colors
                    .reset
            }
            -- Credit-Notice message template, that is sent to the Recipient of the transfer
            local creditNotice = {
                Target = msg.Recipient,
                Action = 'Credit-Notice',
                Sender = msg.From,
                Quantity = msg.Quantity,
                Data = Colors.gray ..
                    "You received " ..
                    Colors.blue .. msg.Quantity .. Colors.gray .. " from " .. Colors.green .. msg.From .. Colors.reset
            }

            -- Add forwarded tags to the credit and debit notice messages
            for tagName, tagValue in pairs(msg) do
                -- Tags beginning with "X-" are forwarded
                if string.sub(tagName, 1, 2) == "X-" then
                    debitNotice[tagName] = tagValue
                    creditNotice[tagName] = tagValue
                end
            end

            -- Send Debit-Notice and Credit-Notice
            ao.send(debitNotice)
            ao.send(creditNotice)
        end
    else
        ao.send({
            Target = msg.From,
            Action = 'Transfer-Error',
            ['Message-Id'] = msg.Id,
            Error = 'Insufficient Balance!'
        })
    end
end)

--[[
    Mint
   ]]
--
Handlers.add('mint', Handlers.utils.hasMatchingTag('Action', 'Mint'), function(msg)
    assert(type(msg.Tags.Quantity) == 'string', 'Quantity is required!')
    assert(bint(0) < bint(msg.Tags.Quantity), 'Quantity must be greater than zero!')

    if not Balances[ao.id] then Balances[ao.id] = "0" end
    if not Balances[msg.From] then Balances[msg.From] = "0" end

    if msg.From == Gameplay then
        -- Add tokens to the token pool, according to Quantity
        Balances[msg.From] = utils.add(Balances[msg.From], msg.Tags.Quantity)
        ao.send({
            Target = msg.From,
            Data = "Successfully minted"
        })
    else
        ao.send({
            Target = msg.From,
            Action = 'Mint-Error',
            ['Message-Id'] = msg.Id,
            Error = 'Only the Gameplay process can mint new ' .. Ticker .. ' tokens!'
        })
    end
end)

--[[
     Total Supply
   ]]
--
Handlers.add('totalSupply', Handlers.utils.hasMatchingTag('Action', 'Total-Supply'), function(msg)
    assert(msg.From ~= ao.id, 'Cannot call Total-Supply from the same process!')

    local totalSupply = bint(0)
    for _, balance in pairs(Balances) do
        totalSupply = utils.add(totalSupply, balance)
    end

    ao.send({
        Target = msg.From,
        Action = 'Total-Supply',
        Data = tostring(totalSupply),
        Ticker = Ticker
    })
end)


-- "grant" handler - like "mint", but adds tokens to a certain address
--[[
    Grant
   ]]
--
Handlers.add('grant', Handlers.utils.hasMatchingTag('Action', 'Grant'), function(msg)
    assert(type(msg.Recipient) == 'string', 'Recipient is required!')
    assert(type(msg.Quantity) == 'string', 'Quantity is required!')
    assert(bint(0) < bint(msg.Quantity), 'Quantity must be greater than zero!')

    if not Balances[msg.Recipient] then Balances[msg.Recipient] = "0" end

    if GrantWhitelist[msg.From] then
        -- Add tokens to the token pool, according to Quantity
        Balances[msg.Recipient] = utils.add(Balances[msg.Recipient], msg.Quantity)
        TotalSupply = utils.add(TotalSupply, msg.Quantity)
        ao.send({
            Target = msg.From,
            Data = Colors.gray ..
                "Successfully granted " .. Colors.blue .. msg.Quantity .. Colors.reset .. " to " .. msg.Recipient
        })

        local grantNotice = {
            Target = msg.Recipient,
            Action = 'Grant-Notice',
            Sender = msg.From,
            Quantity = msg.Quantity,
            Data = Colors.gray ..
                "You were granted " ..
                Colors.blue .. msg.Quantity .. Colors.gray .. " from " .. Colors.green .. msg.From .. Colors.reset
        }
        local creditNotice = {
            Target = msg.Recipient,
            Action = 'Credit-Notice',
            Sender = msg.From,
            Quantity = msg.Quantity,
            Data = Colors.gray ..
                "You received " ..
                Colors.blue .. msg.Quantity .. Colors.gray .. " from " .. Colors.green .. msg.From .. Colors.reset
        }

        -- Add forwarded tags to the credit and debit notice messages
        for tagName, tagValue in pairs(msg) do
            -- Tags beginning with "X-" are forwarded
            if string.sub(tagName, 1, 2) == "X-" then
                creditNotice[tagName] = tagValue
            end
        end

        -- Send Grant-Notice
        ao.send(creditNotice)
    else
        ao.send({
            Target = msg.From,
            Action = 'Grant-Error',
            ['Message-Id'] = msg.Id,
            Error = 'Only Grant Whitelist can grant new ' .. Ticker .. ' tokens!'
        })
    end
end)
