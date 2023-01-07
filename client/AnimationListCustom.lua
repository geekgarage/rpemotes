-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Emotes = {
    ["ggloop"] = { -- Looping and wil slide around
        "missmic4",
        "michael_tux_fidget",
        "ggloop",
        AnimationOptions = {
            EmoteLoop = true
        }
    },
    ["ggloopmoveing"] = { -- Will loop and is controllable
        "missmic4",
        "michael_tux_fidget",
        "ggloopmoveing",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
    ["ggmoving"] = { -- Will loop and is controllable
        "missmic4",
        "michael_tux_fidget",
        "ggmoving",
        AnimationOptions = {
            EmoteMoving = true
        }
    },
    ["ggnotmoving"] = {
        "missmic4",
        "michael_tux_fidget",
        "ggnotmoving",
        AnimationOptions = {
            EmoteMoving = false
        }
    },
    ["ggstuck"] = {
        "missmic4",
        "michael_tux_fidget",
        "ggstuck",
        AnimationOptions = {
            EmoteStuck = true
        }
    }
}
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
