-- Emotes you add in the file will automatically be added to AnimationList.lua
local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {    
    ["bdogtest"] = {
        "creatures@rottweiler@move",
        "dump_loop",
        "TEST Dump (big dog)",
        AnimationOptions = {
            EmoteLoop = true,
            EmoteMoving = false,
            PtfxAsset = "scr_amb_chop",
            PtfxName = "ent_anim_dog_poo",
            PtfxNoProp = false,
            PtfxPlacement = {
                0.10,
                -0.08,
                0.0,
                0.0,
                90.0,
                180.0,
                1.0
            },
            PtfxInfo = Config.Languages[Config.MenuLanguage]['poop'],
            PtfxWait = 3000,
            PtfxCanHold = true
        }
    },
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
