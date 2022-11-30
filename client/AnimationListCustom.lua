-- Emotes you add in the file will automatically be added to AnimationList.lua
local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {
    ["bdogindicateahead"] = {
        "creatures@rottweiler@indication@",
        "indicate_ahead",
        "Indicate Ahead (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatehigh"] = {
        "creatures@rottweiler@indication@",
        "indicate_high",
        "Indicate High (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["bdogindicatelow"] = {
        "creatures@rottweiler@indication@",
        "indicate_low",
        "Indicate Low (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    },    
    ["bdogshiftpaws"] = {
        "creatures@rottweiler@tricks@",
        "paw_right_loop_left",
        "paw right left loop (big dog)",
        AnimationOptions = {
            EmoteLoop = true
        }
    }
}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {}

-- Add the custom emotes
for arrayName, array in pairs(CustomDP) do
    if RP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            -- We don't add adult animations if not needed
            if not emoteData.AdultAnimation or not Config.AdultEmotesDisabled then
                RP[arrayName][emoteName] = emoteData
            end
        end
    end
    -- Free memory
    CustomDP[arrayName] = nil
end
-- Free memory
CustomDP = nil
end
-- Free memory
CustomDP = nil
