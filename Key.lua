local correctKeys = {
    ["Dev"] = {hwid = nil, expires = nil}, -- Key "Dev" ใช้ได้ตลอด ไม่มีหมดอายุ
    ["Fopf934xhvwbtdsgdrg"] = {hwid = nil, expires = os.time() + 86400},
    ["Owigsjfnbsmscsfed"] = {hwid = nil, expires = os.time() + 86400},
    ["rcgkbkdgcndurgbnidxrgrdf"] = {hwid = nil, expires = os.time() + 86400}
}

local correctDiscordids = {
    ["18668065416"] = {hwid = nil, expires = os.time() + 86400},
    ["34671275"] = {hwid = nil, expires = os.time() + 86400},
    ["2534191426"] = {hwid = nil, expires = os.time() + 86400}
}

-- ฟังก์ชันดึง Hardware ID ของผู้เล่น
local function GetHardwareID()
    local player = game.Players.LocalPlayer
    return game:GetService("RbxAnalyticsService"):GetClientId() -- ใช้ Client ID เป็น HWID
end

-- ฟังก์ชันตรวจสอบและลบ Key / Discordid ที่หมดอายุ
local function RemoveExpiredKeysAndDiscordids()
    local currentTime = os.time()

    for key, data in pairs(correctKeys) do
        if key ~= "Dev" and data.expires and currentTime > data.expires then
            correctKeys[key] = nil
        end
    end

    for discordid, data in pairs(correctDiscordids) do
        if data.expires and currentTime > data.expires then
            correctDiscordids[discordid] = nil
        end
    end
end

local function CheckKeyAndDiscordid()
    RemoveExpiredKeysAndDiscordids()

    local player = game.Players.LocalPlayer
    local Key = _G.Key           -- ดึงค่าคีย์จากภายนอก (_G.Key)
    local Discordid = _G.Discordid  -- ดึงค่า Discord ID จากภายนอก (_G.Discordid)
    local hwid = GetHardwareID()

    -- ตรวจสอบว่า Key อยู่ในรายการที่ถูกต้อง
    if not correctKeys[Key] then
        player:Kick("❌ Wrong or Expired Key! You are kicked out of the game.")
        return
    end

    -- ตรวจสอบว่า Discordid อยู่ในรายการที่ถูกต้อง
    if not correctDiscordids[Discordid] then
        player:Kick("❌ Wrong or Expired Discordid! You are kicked out of the game.")
        return
    end

    -- ตรวจสอบว่า Key ถูกใช้ไปแล้วในเครื่องอื่น
    if correctKeys[Key].hwid and correctKeys[Key].hwid ~= hwid then
        player:Kick("❌ This Key is already used on another device!")
        return
    end

    -- ตรวจสอบว่า Discordid ถูกใช้ไปแล้วในเครื่องอื่น
    if correctDiscordids[Discordid].hwid and correctDiscordids[Discordid].hwid ~= hwid then
        player:Kick("❌ This Discordid is already used on another device!")
        return
    end

    -- บันทึก HWID ลงใน Key และ Discordid
    correctKeys[Key].hwid = hwid
    correctDiscordids[Discordid].hwid = hwid

    print("✅ Key และ Discordid ถูกต้อง! เริ่มต้นทำงาน...")

    -- หลังจากตรวจสอบว่า Key และ Discordid ถูกต้อง จะทำการโหลดสคริปต์จาก URL
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xZpmkill802/keyTest/refs/heads/main/Test.lua"))()
end

CheckKeyAndDiscordid()
