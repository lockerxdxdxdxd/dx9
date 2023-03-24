--// DaHood Ping To Prediciton Increment Thing - supg //--

--[[

hi i made that persons script better (cant remember the name)

]]

--// Change this stuff if you need to
local info_location = {169, 7} -- X, Y Location of where the info box showing ping and sense is located

--// This table can be expanded / lowered / replaced. The scripts adjusts to any valid set.
local sets = {
    [40] = 7.62,
    [50] = 7.46,
    [60] = 7.22,
    [70] = 7.02,
    [80] = 6.82,
    [90] = 6.612,
    [100] = 6.41,
    [110] = 6.18,
}

--// Actual Script //--
local Lib = loadstring(dx9.Get("https://raw.githubusercontent.com/lockerxdxdxdxd/dx9/main/dh-main.lua"))()

info_location[2] = info_location[2] - 19 -- Adjusting Offset

--// Init
if Lib.FirstRun then
    local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
    split = string.split(pingvalue,'(')
    ping = tonumber(split[1])

    local increment = nil
    
    for i,v in pairs(sets) do
        if ping >= i then
            increment = i
        end
    end
    
    if increment == nil then
        increment = 40
    end
    
    dx9.SetAimbotValue("prediction", sets[increment])
    _G.Lib.Increment = increment
end

--// Drawing Box
local text = "PRED: "..sets[_G.Lib.Increment].."   |   PING: "..math.floor(game:GetService("Stats"):GetAveragePing())
local length = dx9.CalcTextWidth(text)

dx9.DrawFilledBox( { info_location[1] + 4 , info_location[2] + 19 } , { info_location[1] + 4 + length + 12, info_location[2] + 22 + (18) } , Lib.CurrentRainbowColor )
dx9.DrawFilledBox( { info_location[1] + 5 , info_location[2] + 20 } , { info_location[1] + 3 + length + 12, info_location[2] + 21 + (18) } , Lib.OutlineColor )
dx9.DrawFilledBox( { info_location[1] + 6 , info_location[2] + 21 } , { info_location[1] + 2 + length + 12, info_location[2] + 20 + (18) } , Lib.MainColor )

dx9.DrawString( { info_location[1] + 11 , info_location[2] + 20 } , Lib.FontColor , text )
