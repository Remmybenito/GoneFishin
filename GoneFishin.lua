local startFishing = CreateFrame("Frame")
local endFishing = CreateFrame("Frame")
local button = CreateFrame("Button", nil, UIParent)
button:SetPoint("CENTER", UIParent)
button:SetWidth(200)
button:SetHeight(50)
button:SetText("test")
button:SetNormalFontObject("GameFontNormal")
button:Hide()

local timesFished = 0 --to determine start fishing settings
startFishing:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")

function startfishingFunc()
    if timesFished == 0 then
        SetView(3) -- changes camera view for first time
        timesFished = 1 --prevents playing music/camera shift again
        UIFrameFadeOut(UIParent,1,1,0)
        --play music
        --make only chat and bags? visible
        --show button to end sessions
        button:Show()
    else

    end
    --fadeout ui
end

function endFishingFunc()
    SetView(5)
    UIFrameFadeIn(UIParent,1,0,1)
    button:Hide()
    timesFished = 0
    

end

startFishing:SetScript("OnEvent", startfishingFunc)
button:SetScript("OnClick", endFishingFunc)


