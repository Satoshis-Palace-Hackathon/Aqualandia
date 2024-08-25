local ao = require('ao')

-- Constant variables
Constants = Constants or {}

Constants.TARGET_WORLD_PID = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM"

Constants.Name = Constants.Name or "Aqualandia Gameplay Process"

Constants.FunderId = "N90q65iT59dCo01-gtZRUlLMX0w6_ylFHv2uHaSUFNk"

Constants.AdmissionPrice = 10000000000000

Constants.Messages = Constants.Messages or {
    ReturnTokens = "Return Tokens",
    TransferTokens = "Transfer Tokens",
    Description =
    "Aqualandia is a fishing adventure game where you can gain 10 fishing casts for 10 $LLAMA tokens and do your best to catch as many fish as you can, redeemable at the fish mongers stands for $LLAMA. But fish are not the only thing in the water..."
}

Constants.LlamaToken = "pazXumQI-HPH7iFGfTC-4_7biSnqz_U67oFAGry5zUY"

Constants.Tokens = {
    Payment = Constants.LlamaToken,
    CommonFish = "BC4KnHcT4YnonwToJATLabIJRGIYdYxY2-KnHbe1tN0",
    RareFish = "HsR53ViqEyHMyAdv5Utz8fV_QRlmpMcaP4Py0R2ZgRM",
    LegendaryFish = "ENNFBJS_TpBTh-xR648Pdpx2Z8YgZkRbiqbuzfVv0M4",
    Crown = "qVt70_SxhjVd5qF6Cv4RD5DQbMuohAKs8mVIUa4mkOY",         -- 5
    MessageBottle = "avndw44tioVgE2uKAzmM1wVC8DgV6aDP367uM9jPu74", -- 6
    Boot = "LluMcZlaG4JM9oLAz4SyQc6v1On6QkmmT4Ygbpl1GNA",          -- 7
    Chips = "FMU_kcugZH0IIoPDTC9RG7xHV3ldgUbiDhN539f_hVA",         -- 8
    Hat = "AhTpgUaAycObmsSMV6VBqYKjQWVUPjcVlhI6rz5dX74",           -- 9
    Trash = "lTzU6iL_1h0URfXOdTgQEsvVmO1kiR775j3W2NU9K8M"          -- 10
}

Constants.NumToTokenMap = {
    [1] = Constants.Tokens.Payment,
    [2] = Constants.Tokens.CommonFish,
    [3] = Constants.Tokens.RareFish,
    [4] = Constants.Tokens.LegendaryFish,
    [5] = Constants.Tokens.Crown,
    [6] = Constants.Tokens.MessageBottle,
    [7] = Constants.Tokens.Boot,
    [8] = Constants.Tokens.Chips,
    [9] = Constants.Tokens.Hat,
    [10] = Constants.Tokens.Trash
}

Constants.TokenPayout = {
    Common = 500000000000,
    Rare = 1000000000000,
    Legendary = 5000000000000
}

Constants.LocationPayoutTables = {
    -- Shallow Waters
    [1] = {
        { threshold = 95, catch = 4 },
        { threshold = 60, catch = 3 },
        { threshold = 10, catch = 2 },
        { threshold = 5,  catch = 7 },
        { threshold = 1,  catch = 9 },
        { threshold = 0,  catch = 5 },

    },
    -- Deep Waters
    [2] = {
        { threshold = 93, catch = 4 },
        { threshold = 53, catch = 3 },
        { threshold = 33, catch = 2 },
        { threshold = 13, catch = 10 },
        { threshold = 8,  catch = 6 },
        { threshold = 3,  catch = 9 },
        { threshold = 0,  catch = 8 },

    },
    -- Secret Spot
    [3] = {
        { threshold = 85, catch = 4 },
        { threshold = 70, catch = 3 },
        { threshold = 30, catch = 10 },
        { threshold = 10, catch = 7 },
        { threshold = 0,  catch = 9 },
    },
    -- Junk Pool
    [4] = {
        { threshold = 95, catch = 4 },
        { threshold = 90, catch = 3 },
        { threshold = 85, catch = 2 },
        { threshold = 77, catch = 5 },
        { threshold = 65, catch = 8 },
        { threshold = 50, catch = 6 },
        { threshold = 30, catch = 9 },
        { threshold = 15, catch = 7 },
        { threshold = 0,  catch = 10 },
    }
}

-- State data storage
State = State or {}

State.Rods = {
    "LIjguST4K8Dwgm0N2sx4d0RWOVwBbI0GGTs1uqhu4-A",
    "1t1rq8D5yTVuBgOuF4Hp1O2K4mdUfmR0sGHVFfkal9c",
    "gm9hLIm3kyWw_Itt1Ub494lFStZoUbOAeZreDfOR2t8",
    "O_gCzJP_azOv4VbT_V7GyinDjeusUXS7UY1XSqRxE3k",
    "uZhEMKWP_azwKp4IRD1pIQOSzCSq3XTKH2bFs74jC4Q",
    "JUv_7pYwKW_PobNDW4qaPZpMGt9dyzPsdaeKLxNfw8E",
    "YYP7Zkr1s-w534LUBY2kJPnHKJBDqUFq9Y4FPPWRWRU",
    "SyoMsssRvuedVPdpYOyFDzSebGqAxX3GkwNAxkl4aG0",
    "nBh2EfHu20NW4nCdSN8sVDP9fbsyPO3yHLIPMwuHvRA",
    "8q_TRd2J7xI_mLBOjHf4o1KaJaHxNcqZR8InPthItA8",
    "qm42I2DnuXg62dfhJ4nmRDCCLQttCGMcMdlTazqH748",
    "9cSvFUvzDtiMB5nt9fLV2bnIzM7IrFd-Mx2Dhls0R28",
    "QG1TZhrvfvqPAFMpYW08StEPFaLbHEb3qnFKALsCVas",
    "4I0S3rWw0wXZRctVfs1a17Jv1YWeYLLWNlq6Te-pVCw",
    "1ZW_7aLLdR62njwO8oL0AlHTZ09NsDqqQgRBGQHVkls",
    "iURrMZYwQZTa2SBzG9kKyLUiKKx0h7bij-cJFcgTTYQ",
    "6uUu5ovvGzQrqXmHoIGgs5m_IN7_qV4WRHIFGnvSHvk",
    "AjkgZPLdHXx-F20t-V6DnF5-UPPwDZRcPxAQCVSbk5Q",
    "2MBFNd7OMN3Is0d1-rCYEKIaqWNKjc6PuwUo_CiF0VA",
    "4FPXurR6UDkqc0mdpKE-YOT8nYhsa8NS9dxCZo87hCo"
}


State.Balance = State.Balance or {
    Payment = 0,
    CommonFish = 0,
    RareFish = 0,
    LegendaryFish = 0
}

State.Leaderboard = State.Leaderboard or {}

-- State Service functions
StateServices = StateServices or {}

-- Function to check if a user exists, and if not, add them with default values
function StateServices.updateLeaderboard(userId, catch)
    if not State.Leaderboard[userId] then
        State.Leaderboard[userId] = {
            Name = Users[userId].Name,
            Fish = {
                Common = 0,
                Rare = 0,
                Legendary = 0
            }
        }
        print("Added user: ", userId, "with default values.")
    end
    if catch == 2 then
        State.Leaderboard[userId].Fish.Common = State.Leaderboard[userId].Fish.Common + 1
    elseif catch == 3 then
        State.Leaderboard[userId].Fish.Rare = State.Leaderboard[userId].Fish.Rare + 1
    elseif catch == 4 then
        State.Leaderboard[userId].Fish.Legendary = State.Leaderboard[userId].Fish.Legendary + 1
    end
end

-- Function to check if valid fishing rod
function StateServices.isValidRod(rodId)
    print("checking valid rod")
    -- Check if the value exists in the table
    for _, value in ipairs(State.Rods) do
        if value == rodId then
            return true -- Value found, return true
        end
    end
    -- Value not found, return false
    return false
end

-- Function to return proper catch per cast
function StateServices.getCatchForLocation(location, chance)
    local locationTable = Constants.LocationPayoutTables[location]
    if not locationTable then
        return 0
    end
    for _, range in ipairs(locationTable) do
        if chance > range.threshold then
            return range.catch
        end
    end

    return 0
end

-- Function to redeem fish for llama tokens
function StateServices.redeemFish(userId, quantity, token)
    local tokenPayouts = {
        [2] = { amount = Constants.TokenPayout.Common, increaseFunction = StateServices.increaseCommonFish },
        [3] = { amount = Constants.TokenPayout.Rare, increaseFunction = StateServices.increaseRareFish },
        [4] = { amount = Constants.TokenPayout.Legendary, increaseFunction = StateServices.increaseLegendaryFish }
    }
    local selectedToken = tokenPayouts[token]
    assert(selectedToken, "Invalid token provided")

    local redemptionValue = quantity * selectedToken.amount

    selectedToken.increaseFunction(quantity)

    TokenService.transfer(userId, redemptionValue, Constants.Messages.Redemption, 1)
    StateServices.decreasePayment(redemptionValue)
    return redemptionValue
end

-- Function to increase State Payment Balance
function StateServices.increasePayment(quantity)
    State.Balance.Payment = State.Balance.Payment + quantity
end

-- Function to decrease State Payment Balance
function StateServices.decreasePayment(quantity)
    State.Balance.Payment = State.Balance.Payment - quantity
end

-- Function to increase State CommonFish Balance
function StateServices.increaseCommonFish(quantity)
    State.Balance.CommonFish = State.Balance.CommonFish + quantity
end

-- Function to decrease State CommonFish Balance
function StateServices.decreaseCommonFish(quantity)
    State.Balance.CommonFish = State.Balance.CommonFish - quantity
end

-- Function to increase State RareFish Balance
function StateServices.increaseRareFish(quantity)
    State.Balance.RareFish = State.Balance.RareFish + quantity
end

-- Function to decrease State RareFish Balance
function StateServices.decreaseRareFish(quantity)
    State.Balance.RareFish = State.Balance.RareFish - quantity
end

-- Function to increase State LegendaryFish Balance
function StateServices.increaseLegendaryFish(quantity)
    State.Balance.LegendaryFish = State.Balance.LegendaryFish + quantity
end

-- Function to decrease State LegendaryFish Balance
function StateServices.decreaseLegendaryFish(quantity)
    State.Balance.LegendaryFish = State.Balance.LegendaryFish - quantity
end

-- User data storage
Users = Users or {}

-- User Service functions
UserServices = UserServices or {}

-- Function to check if a user exists, and if not, add them with default values
function UserServices.ensureUserExists(userId)
    if not Users[userId] then
        Users[userId] = {
            Name = "",
            Balance = {
                Casts = 0,
                Bait = 0
            }
        }
        print("Added user:", userId, "with default values.")
    else
        print("User already exists:", userId)
    end
end

-- Function to check if a user has casts
function UserServices.hasCasts(userId)
    UserServices.ensureUserExists(userId)
    if Users[userId] and Users[userId].Balance.Casts > 0 then
        return true
    else
        return false
    end
end

-- Function to check if a user has bait
function UserServices.hasBait(userId)
    if Users[userId] and Users[userId].Balance.Bait > 0 then
        return true
    else
        return false
    end
end

-- Function to validate name is of correct format, does not check for vulgarity potential todo
function UserServices.validateSenderName(senderName)
    return senderName ~= nil
        and string.len(senderName) > 0
        and string.len(senderName) <= 20
end

-- Function to grant casts and bait on valid enrollment
function UserServices.enroll(userId, name)
    UserServices.ensureUserExists(userId)
    Users[userId].Balance.Casts = Users[userId].Balance.Casts + 10
    Users[userId].Balance.Bait = Users[userId].Balance.Casts + 5
    Users[userId].Name = name
end

-- Function to use cast on cast
function UserServices.useCast(userId)
    Users[userId].Balance.Casts = Users[userId].Balance.Casts - 1
end

-- Function to sue bait on baited cast
function UserServices.useBait(userId)
    Users[userId].Balance.Bait = Users[userId].Balance.Bait - 1
end

-- Token Service functions
TokenService = TokenService or {}

-- Function to assign correct token based on token number
function TokenService.numToToken(num)
    return Constants.NumToTokenMap[num]
end

-- Send tokens from process
function TokenService.transfer(userId, quantity, message, token)
    local tokenProcess = TokenService.numToToken(token)
    print('sending: ' .. tokenProcess .. ' to user')
    ao.send({
        Target = tokenProcess,
        Action = "Transfer",
        Recipient = userId,
        Quantity = tostring(quantity),
        ["X-Note"] = message
    })
    ao.send({
        Target = userId,
        Action = Constants.Messages.TransferTokens,
        Data = message
    })
end

-- Return tokens sent erroneously
function TokenService.returnTokens(token, userId, quantity, message)
    ao.send({
        Target = token,
        Action = "Transfer",
        Recipient = userId,
        Quantity = tostring(quantity),
        ["X-Note"] = message
    })
    ao.send({
        Target = userId,
        Action = Constants.Messages.ReturnTokens,
        Data = message
    })
end

-- Ensure token is one of valid accepted types
function TokenService.checkTokenValidity(tokenProcess)
    if tokenProcess == Constants.Tokens.Payment then
        return true, 1
    elseif tokenProcess == Constants.Tokens.CommonFish then
        return true, 2
    elseif tokenProcess == Constants.Tokens.RareFish then
        return true, 3
    elseif tokenProcess == Constants.Tokens.LegendaryFish then
        return true, 4
    end
    return false, 0
end

-- Ensure token quantity is valid
function TokenService.validateAmount(quantity, token)
    if quantity == 0 then
        return false
    end
    if token == 1 then
        if quantity >= Constants.AdmissionPrice then
            return true
        end
    else
        return true
    end
end

function TokenService.grant(catch, userId)
    print("granting")
    local token = TokenService.numToToken(catch)
    ao.send({
        Target = token,
        Action = "Grant",
        Quantity = "1",
        Recipient = userId
    })
end

-- Handlers
Handlers = Handlers or {}

--[[
  Info
]]
--
Handlers.add('Info', Handlers.utils.hasMatchingTag('Action', 'Info'), function(msg)
    ao.send({
        Target = msg.From,
        Tags = {
            Name = Constants.Name,
            World = Constants.TARGET_WORLD_PID,
            Description = Constants.Messages.Description
        }
    })
end)

--[[
  Balances
]]
--
Handlers.add('Balances', Handlers.utils.hasMatchingTag('Action', 'Balances'), function(msg)
    ao.send({
        Target = msg.From,
        Tags = {
            BankBalance = tostring(State.Balance.Payment)
        }
    })
end)

--[[
  LeaderBoard
]]
--
Handlers.add('Leaderboard', Handlers.utils.hasMatchingTag('Action', 'Leaderboard'), function(msg)
    ao.send({
        Target = msg.From,
        Tags = {
            Leaderboard = TableToString(State.Leaderboard)
        }
    })
end)

-- Function to sort the leaderboard by Legendary fish count
function SortLeaderboardByLegendary(leaderboard)
    -- Convert the leaderboard to an array for sorting
    local leaderboardArray = {}
    for userId, userData in pairs(leaderboard) do
        table.insert(leaderboardArray, { userId = userId, data = userData })
    end

    -- Sort the array by Legendary fish count
    table.sort(leaderboardArray, function(a, b)
        return a.data.Fish.Legendary > b.data.Fish.Legendary
    end)

    return leaderboardArray
end

-- Function to convert a table to a string for debug output
function TableToString(tbl, indent)
    indent = indent or 0
    local tostr = string.rep(" ", indent) .. "{\n"

    for k, v in pairs(tbl) do
        if type(k) == "number" then
            k = "[" .. k .. "]"
        else
            k = "\"" .. k .. "\""
        end

        if type(v) == "table" then
            v = TableToString(v, indent + 2)
        else
            v = "\"" .. tostring(v) .. "\""
        end

        tostr = tostr .. string.rep(" ", indent + 2) .. k .. " = " .. v .. ",\n"
    end

    return tostr .. string.rep(" ", indent) .. "}"
end

--[[
  Entry point for rods to fish
]]
--
Handlers.add(
    "Fish",
    Handlers.utils.hasMatchingTag("Action", "Fish"),
    function(msg)
        print("Cast Rod")
        local rodId = msg.From
        local userId = msg.Tags.Sender
        local chance = tonumber(msg.Tags.Chance)
        assert(StateServices.isValidRod(rodId), "Only valid rods can fish.")
        local hasCasts = UserServices.hasCasts(userId)
        local location = msg.Tags.Location
        if hasCasts == false then
            print("castless")
            ao.send({
                Target = rodId,
                Tags = {
                    Action = "Castless",
                    Sender = userId
                }
            })
            return
        end

        UserServices.useCast(userId)

        -- Base case of no catch
        local catch = StateServices.getCatchForLocation(tonumber(location), tonumber(chance))

        -- If catch > 0 then transfer fish and update state
        if catch > 1 then
            TokenService.grant(catch, userId)
            if catch < 5 then
                StateServices.updateLeaderboard(userId, catch)
            end
        end

        print("sending catch information back")
        print(Users[userId].Name)
        -- Send catch information back to rodId
        ao.send({
            Target = rodId,
            Tags = {
                Action = "Catch",
                Catch = tostring(catch),
                Name = Users[userId].Name,
            }
        })
    end
)

-- Entry point for purchasing casts, funding the gameplay and for redeeming fish tokens
Handlers.add(
    "CreditNoticeHandler",
    Handlers.utils.hasMatchingTag("Action", "Credit-Notice"),
    function(msg)
        print("credit-notice")
        local userId = msg.Tags.Sender
        local quantity = tonumber(msg.Tags.Quantity)

        local tokenValid, token = TokenService.checkTokenValidity(msg.From)

        if not tokenValid then
            print("invalid token")
            TokenService.returnTokens(msg.From, userId, quantity, "Invalid token received.")
            return
        end
        local quantityValid = TokenService.validateAmount(quantity, token)
        if not quantityValid then
            print("invalid quantity of tokens")
            TokenService.returnTokens(msg.From, userId, quantity, "Invalid quantity of tokens received.")
            return
        end

        -- Users send payment token to enroll and fish tokens to redeem
        if token == 1 then
            -- Gameplay Funding
            if msg.Tags['X-Note'] == "Funding" and userId == Constants.FunderId then
                -- Handle Funding
                StateServices.increasePayment(quantity)
                return
            else
                -- Enrollment
                local senderName = msg.Tags['X-Sender-Name']
                if not UserServices.validateSenderName(senderName) then
                    return print("Invalid sender name")
                end
                StateServices.increasePayment(quantity)

                print("enrolling user")
                UserServices.enroll(userId, senderName)
                ao.send({
                    Target = Constants.TARGET_WORLD_PID,
                    Tags = {
                        Action = "ChatMessage",
                        ['Author-Name'] = '~The Sea~',
                    },
                    Data = '... ' .. senderName .. ' ... You feel a calling to fish ...'
                })
                return
            end
        else
            -- Token Redemption
            local redemptionValue = StateServices.redeemFish(userId, quantity, token)
            ao.send({
                Target = Constants.TARGET_WORLD_PID,
                Tags = {
                    Action = "ChatMessage",
                    ['Author-Name'] = 'Fish Monger',
                },
                Data = ' You drive a hard bargin ' ..
                    Users[userId].Name .. '... but here\'s ' .. tostring(redemptionValue / 1000000000000) .. ' LLAMA.'
            })
            return
        end
    end)

-- Token interfaces from: https://github.com/permaweb/aos/blob/main/blueprints/token.lua

--[[
     Info
   ]]
--
Handlers.add('info', "Info", function(msg)
    msg.reply({
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
Handlers.add('balance', "Balance", function(msg)
    local bal = '0'

    -- If not Recipient is provided, then return the Senders balance
    if (msg.Tags.Recipient) then
        if (Balances[msg.Tags.Recipient]) then
            bal = Balances[msg.Tags.Recipient]
        end
    elseif msg.Tags.Target and Balances[msg.Tags.Target] then
        bal = Balances[msg.Tags.Target]
    elseif Balances[msg.From] then
        bal = Balances[msg.From]
    end

    msg.reply({
        Balance = bal,
        Ticker = Ticker,
        Account = msg.Tags.Recipient or msg.From,
        Data = bal
    })
end)
