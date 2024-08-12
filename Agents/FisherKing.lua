-- Name: Fisher King

local json = require("json")

Constants = Constants or {}

Constants.Name = "Fisher King"

Constants.GameplayProcess = "sZe_mf4uJs1khzh0QZmNnaxdoXtBa51LRh2uhnDyk3Y"

Constants.TARGET_WORLD_PID = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM"

Constants.LlamaToken = "pazXumQI-HPH7iFGfTC-4_7biSnqz_U67oFAGry5zUY"

Constants.AdmissionPrice = 10000000000000

-- Schema
function EnrollSchemaTags()
  return [[
{
  "type": "object",
  "required": [
    "Action",
    "Recipient",
    "Quantity",
    "X-Sender-Name",
    "X-Note"
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
      "const": ]] .. (Constants.AdmissionPrice) .. [[,
      "title": "$LLAMA offering 10."
    },
    "X-Sender-Name": {
      "type": "string",
      "minLength": 2,
      "maxLength": 20,
      "title": "Name for check-in and Leaderboard"
    },
    "X-Note": {
      "type": "string",
      "const": "Enroll"
    }
  }
}
]]
end

function SchemaExternalHasLlama()
  return {
    Enroll = {
      Target = Constants.LlamaToken, -- Can be nil? In that case it must be supplied externally
      Title = "Enroll in the fishing Expedition of a Lifetime",
      Description =
      "Pay 10 $LLAMA to gain 10 casts and 5 bait to catch fish that can be sold for $LLAMA and other loot.",
      Schema = {
        Tags = json.decode(EnrollSchemaTags()),
        -- Data
        -- Result?
      },
    },
  }
end

Handlers.add(
  'TokenBalanceResponse',
  function(msg)
    local fromToken = msg.From == Constants.LlamaToken
    local hasBalance = msg.Tags.Balance ~= nil
    return fromToken and hasBalance
  end,
  function(msg)
    local account = msg.Tags.Account
    local balance = tonumber(msg.Tags.Balance)
    print('Account: ' .. account .. ', Balance: ' .. balance)

    if (balance >= Constants.AdmissionPrice) then
      ao.send({
        Target = account,
        Tags = { Type = 'SchemaExternal' },
        Data = json.encode(SchemaExternalHasLlama())
      })
    else
      ao.send({
        Target = account,
        Tags = { Type = 'SchemaExternal' },
        Data = json.encode({
          Enroll = {
            Target = Constants.GameplayProcess,
            Title = "Enroll in the fishing Expedition of a Lifetime",
            Description =
            "You don't have 10 $LLAMA. Please petition the King or head over to permaswap to get some!",
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
      Target = Constants.LlamaToken,
      Tags = {
        Action = 'Balance',
        Recipient = msg.From,
      },
    })
  end
)
