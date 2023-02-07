-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {
    ["bdogjump"] = {
        "creatures@rottweiler@melee@",
        "dog_attack",
        "Jump (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump2"] = {
        "creatures@rottweiler@melee@",
        "melee",
        "Jump 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump3"] = {
        "creatures@rottweiler@melee@streamed_core@",
        "attack",
        "Jump 3 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump4"] = {
        "creatures@rottweiler@move",
        "canter",
        "Jump 4 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump5"] = {
        "creatures@rottweiler@move",
        "dying",
        "Jump 5 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump6"] = {
        "creatures@rottweiler@move",
        "melee",
        "Jump 6 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {}



-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

-- Add the custom emotes to RPEmotes main array
for arrayName, array in pairs(CustomDP) do
    if RP[arrayName] then
        for emoteName, emoteData in pairs(array) do
            RP[arrayName][emoteName] = emoteData
        end
    end
    -- Free memory
    CustomDP[arrayName] = nil
end
-- Free memory
CustomDP = nil
