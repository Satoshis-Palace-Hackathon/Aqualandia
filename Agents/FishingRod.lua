-- Name: Fishing Rod

local json = require("json")

Constants = Constants or {}

Constants.Name = "Fishing Rod"

Constants.TARGET_WORLD_PID = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8"

Constants.GameplayProcess = "sZe_mf4uJs1khzh0QZmNnaxdoXtBa51LRh2uhnDyk3Y"

Constants.LocationId = 4

Constants.LocationName = "Junk Pool"

Constants.RodName = "Fishing Rod"

Constants.JunkTable = {
    [5] = "Crown",
    [6] = "MessageBottle",
    [7] = "Boot",
    [8] = "Chips",
    [9] = "Hat",
    [10] = "Trash"
}


Handlers.add(
    'DefaultInteraction',
    Handlers.utils.hasMatchingTag('Action', 'DefaultInteraction'),
    function(msg)
        print('DefaultInteraction - cast rod')

        local chance = math.random(100)
        print('chance: ' .. tostring(chance))
        ao.send({
            Target = Constants.TARGET_WORLD_PID,
            Tags = {
                Action = "ChatMessage",
                ['Author-Name'] = Constants.RodName,
                Recipient = msg.From,
            },
            Data = 'You raise your rod up to cast into the sea...'
        })
        ao.send({
            Target = Constants.GameplayProcess,
            Tags = {
                Action = "Fish",
                Sender = msg.From,
                Chance = tostring(chance),
                Location = tostring(Constants.LocationId)
            }
        })
        print("sent messages")
    end
)

Handlers.add(
    "Catch",
    Handlers.utils.hasMatchingTag("Action", "Catch"),
    function(msg)
        print("Catch")
        local userId = msg.Tags.Sender
        local catch = tonumber(msg.Tags.Catch)
        assert(msg.From == Constants.GameplayProcess, "You have no authority to call this handler")
        local message = '...and your lure fails to get a bite ' .. msg.Tags.Name .. '...'

        if catch == 2 then
            message = '...and ' .. msg.Tags.Name .. ' you got a bite! You have landed one common fish'
        elseif catch == 3 then
            message = '...and ' .. msg.Tags.Name .. ' whoa! reel in hard! You\'ve got yourself a rare fish on the line!'
        elseif catch == 4 then
            message = '... holy flapjack ' .. msg.Tags.Name .. '! You\'ve caught a legendary fish!'
        else
            local item = Constants.JunkTable[catch]
            message = msg.Tags.Name .. ' you got a... something on here... one ' .. item .. ' I guess?'
        end

        ao.send({
            Target = Constants.TARGET_WORLD_PID,
            Tags = {
                Action = "ChatMessage",
                ['Author-Name'] = Constants.RodName,
                Recipient = userId,
            },
            Data = message
        })
    end
)

Handlers.add(
    "Castless",
    Handlers.utils.hasMatchingTag("Action", "Castless"),
    function(msg)
        print("Castless")
        local userId = msg.Tags.Sender
        ao.send({
            Target = Constants.TARGET_WORLD_PID,
            Tags = {
                Action = "ChatMessage",
                ['Author-Name'] = Constants.RodName,
                Recipient = userId,
            },
            Data = '... but you must see the Fisher King to get rod casts...'
        })
    end
)
