-- Name: Common Fish Monger

local json = require("json")

Constants = Constants or {}

Constants.Name = "Common Fish Monger"

Constants.TARGET_WORLD_PID = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM"

Constants.GameplayProcess = "sZe_mf4uJs1khzh0QZmNnaxdoXtBa51LRh2uhnDyk3Y"

Constants.Tokens = {
    PaymentToken = "pazXumQI-HPH7iFGfTC-4_7biSnqz_U67oFAGry5zUY",
    CommonFishToken = "BC4KnHcT4YnonwToJATLabIJRGIYdYxY2-KnHbe1tN0",
    RareFishToken = "HsR53ViqEyHMyAdv5Utz8fV_QRlmpMcaP4Py0R2ZgRM",
    LegendaryFishToken = "ENNFBJS_TpBTh-xR648Pdpx2Z8YgZkRbiqbuzfVv0M4"
}

-- Schema
function SellFishSchemaTags(tokenBalance)
    return [[
{
  "type": "object",
  "required": [
    "Action",
    "Recipient",
    "Quantity"
  ],
  "properties": {
    "Action": {
      "type": "string",
      "const": "Transfer"
    },
    "Recipient": {
      "type": "string",
      "const": "]] .. Constants.GameplayProcess .. [["
    },
    "Quantity": {
      "type": "number",
      "default": ]] .. tokenBalance .. [[,
      "minimum": ]] .. 1 .. [[,
      "maximum": ]] .. tokenBalance .. [[,
      "title": "Common Fish to Redeem, you may enter a number up to what is displayed(current balance).",
    }
  }
}
]]
end

function SchemaExternalHasFish(tokenBalance)
    return {
        Redeem = {
            Target = Constants.Tokens.CommonFishToken,
            Title = "Sell your CommonFishTokens for Llama",
            Description =
            "You can get 0.5 $LLAMA per Common fish sold.",
            Schema = {
                Tags = json.decode(SellFishSchemaTags(tokenBalance)),
                -- Data
                -- Result?
            },
        },
    }
end

Handlers.add(
    'TokenBalanceResponse',
    function(msg)
        local fromToken = msg.From == Constants.Tokens.CommonFishToken
        local hasBalance = msg.Tags.Balance ~= nil
        return fromToken and hasBalance
    end,
    function(msg)
        local account = msg.Tags.Account
        local balance = tonumber(msg.Tags.Balance)
        print('Account: ' .. account .. ', Balance: ' .. balance)

        if (balance >= (1)) then
            ao.send({
                Target = account,
                Tags = { Type = 'SchemaExternal' },
                Data = json.encode(SchemaExternalHasFish(
                    balance))
            })
        else
            ao.send({
                Target = account,
                Tags = { Type = 'SchemaExternal' },
                Data = json.encode({
                    Redeem = {
                        Target = Constants.GameplayProcess, -- Can be nil? In that case it must be supplied externally
                        Title = "Sell your Common Fish Tokens for Llama",
                        Description =
                        "You don't have any Common Fish to sell. Please see the Fisher King to gain casts to catch fish.",
                        Schema = nil,
                    },
                })
            })
        end
    end
)

Handlers.add(
    'SchemaExternal',
    Handlers.utils.hasMatchingTag('Action', 'SchemaExternal'),
    function(msg)
        print('SchemaExternal')
        ao.send({
            Target = Constants.Tokens.CommonFishToken,
            Tags = {
                Action = 'Balance',
                Recipient = msg.From,
            },
        })
    end
)
