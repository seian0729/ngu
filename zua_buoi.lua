print('da execute');
local buoi_cua_rua = isfile("Zua_hap_key.json")

if buoi_cua_rua then
    local Buoi = game:GetService("HttpService"):JSONDecode(readfile("Zua_hap_key.json"))
    getgenv().Key = Buoi["Product Key"]
    
    else
    local Buoi = {}
    Buoi["Product Key"] = getgenv().Key 
	writefile("Zua_hap_key.json", game:GetService("HttpService"):JSONEncode(Buoi))
end
loadstring(game:HttpGet("https://ego-d.xyz/Script/2wjeeE8qgEVSvVUP/?id="..game.PlaceId))()
local buoi = [[
print('new sv')
loadstring(game:HttpGet('https://raw.githubusercontent.com/chimnguu/ngu/master/zua_buoi.lua'))()
]]

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        syn.queue_on_teleport(buoi)
    end
end)
