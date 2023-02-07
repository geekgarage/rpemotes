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
        "missfra0_chop_fchase",
        "ballasog_jumpontrain_ig7",
        "Jump (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump2"] = {
        "missfra0_chop_fchase",
        "ballasog_jumpontrain_ig7_camera",
        "Jump 2 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump3"] = {
        "missfra0_chop_fchase",
        "fra_0_chop_jumps_down",
        "Jump 3 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump4"] = {
        "missfra0_chop_fchase",
        "fra_0_ig_10_chop_jumps_over_flatbed",
        "Jump 4 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump5"] = {
        "missfra0_chop_fchase",
        "fra_0_ig_11_chop_jumps_through_boxcar",
        "Jump 5 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump6"] = {
        "missfra0_chop_fchase",
        "fra_0_ig_8_p1_chop_jumps_under_fence",
        "Jump 6 (big dog)",
        AnimationOptions = {
            EmoteLoop = false
        }
    },
    ["bdogjump7"] = {
        "missfra0_chop_fchase",
        "fra_0_ig_9_chop_jump_over_car_hood",
        "Jump 7 (big dog)",
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
