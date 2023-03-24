loadstring(dx9.Get("https://raw.githubusercontent.com/lockerxdxdxdxd/dx9/main/dh-main.lua"))()
--dxl.ShowConsole()
local settings = {
    ['CQCSmoothness'] = 10, --// aimbot smoothness close
    ['CQCSensitivity'] = 2, --// aimbot sensitivity close
    ['CQCFOV'] = 90, --// close fov (dh)

    ['MediumRangeSmoothness'] = 15, --// aimbot smoothness mid
    ['MediumRangeSensitivity'] = 1, --// aimbot sensitivity mid
    ['MediumRangeFov'] = 40,--// mid fov (dh)

    ['LQCSmoothness'] = 10, --// aimbot smoothness far
    ['LQCSensitivity'] = 2, --// aimbot sensitivity far
    ['LQCFOV'] = 40 --// far fov (dh)
}
local v = dx9.SetAimbotValue
print("FOV :"..dx9.GetAimbotValue("fov"))
print("Smooth :"..dx9.GetAimbotValue("smoothness"))
print("Sens :"..dx9.GetAimbotValue("sensitivity"))
local locked = dx9.GetLocked()
local lplayer = dx9.get_localplayer().Position
local pos = dx9.GetPosition(locked) 
local wts = dx9.WorldToScreen{pos.x,pos.y,pos.z}

print(dxl.GetDistance({pos.x,pos.y,pos.z},lplayer))
if dxl.GetDistance({pos.x,pos.y,pos.z},lplayer) <= 50 then --CQC (Close Quarter) close range distance (dh)
    dx9.SetAimbotValue("fov",settings['CQCFOV'])
    dx9.SetAimbotValue("smoothness",settings['CQCSmoothness'])
    dx9.SetAimbotValue("sensitivity",settings['CQCSensitivity'])
elseif dxl.GetDistance({pos.x,pos.y,pos.z},lplayer) > 200 then -- LQC (Long range) far range  distance (dh)
    dx9.SetAimbotValue("fov",settings['LQCFOV'])
    dx9.SetAimbotValue("smoothness",settings['LQCSmoothness'])
    dx9.SetAimbotValue("sensitivity",settings['LQCSensitivity'])
else -- Medium range (between 50 and 200 studs) mid range distance (dh)
    dx9.SetAimbotValue("fov",settings['MediumRangeFov'])
    dx9.SetAimbotValue("smoothness",settings['MediumRangeSmoothness'])
    dx9.SetAimbotValue("sensitivity",settings['MediumRangeSensitivity'])
end

