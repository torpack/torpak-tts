local API = Config.APIKey
local DefaultVoice = Config.DefaultVoice

local function Speech(Text, VoiceID)
    SendNUIMessage({
        VoiceID = VoiceID or DefaultVoice,
        Text = Text or 'There Is An Error, Is There No Text To Speech ?',
        APIKEY = API
    })
end

exports('Speech', Speech)

--[[ RegisterCommand("tts", function()
        local result = exports['nexus-core']:Input("Input Header", "This Is Input Description", "fa-solid fa-car")
        if result then
            print(result)
            exports['torpak-tts']:Speech(DefaultVoice, result)
        else
            print("Input Is Canceled")
        end
end) ]]