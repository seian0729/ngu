print'top 10 da thu';
print('Last Updated - 4:30 PM 1/19/24 [JST]')
repeat wait()
until game:FindFirstChild("CoreGui")
and game.Players.LocalPlayer

repeat wait(.25)
until game:IsLoaded()
and game.Players.LocalPlayer.Character

local plr = game:GetService('Players').LocalPlayer 
if game.GameId ~= 994732206 then warn('day k phai la blocc trai cay') return end

repeat wait()
until plr:FindFirstChild("Backpack")
and plr:FindFirstChild("DataLoaded")

repeat wait(1) until game:GetService('Players').LocalPlayer.Character
repeat wait(1) until game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart')
wait()
pcall(function() 
    repeat wait(1) until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main')
    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main'):FindFirstChild('ChooseTeam').Visible then 
        for i,v in next, getconnections(game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild('Main').ChooseTeam.Container['Pirates'].Frame.TextButton.Activated) do 
            v:Function()
        end
    end
end)

-- ? Variable

local CommF = game:GetService("ReplicatedStorage").Remotes.CommF_

-- * Table 

local dataFind = {'Level','Beli','Fragments','DevilFruit','Race'}
local fightingstyleList = {
    'Superhuman';
    'Death Step';
    'Sharkman Karate';
    'Electric Claw';
    'Dragon Talon';
    'Godhuman'
}

local data = {}
data['Basic Data'] = {}
data['Items Inventory'] = {}
data['Fruits Inventory'] = {}

local tempData = {}
tempData['Awakened Ability'] = {}
tempData['Fighting Style'] = {}

local fruitsInventory = {
    "Buddha";
    "Portal";
    "Control";
    "Dough";
    "Leopard";
    "Mammoth";
    "Dragon";
    "Kitsune";
    "T";
}

local itemWhitelisted = {
    'Cursed Dual Katana';
    'Soul Guitar';
    'Mirror Fractal';
    'Valkyrie Helm';
    'Dark Fragment';
}

-- * End Table

-- ! Function

subFruit = function(v)
    return tostring(v:gsub("-(.*)","")) == "T" and "TRex" or tostring(v:gsub("-(.*)",""))
end


getData = function(...)
    return CommF:InvokeServer(...)
end

getRaceAwakening = function()
    local v113 = getData("Wenlocktoad", "1")
    local v111 = getData("Alchemist", "1")
    if game.Players.LocalPlayer.Character:FindFirstChild('RaceTransformed') then
        print('founded Race Transformed')
        return 'V4'
    end
    if v113 == -2 then
        return "V3"
    end
    if v111 == -2 then
        return 'V2'
    end
    return 'V1'
end

getStatusAwakened = function()
    local awakenFounded = false
    pcall(function()
        for i, v in pairs(getData('getAwakenedAbilities')) do
            if v.Awakened then 
                table.insert(tempData['Awakened Ability'],i)
            end
            awakenFounded = true
        end
    end)
    if awakenFounded then
        if table.find(tempData['Awakened Ability'],"V") then
            return "[Full]";
        else
            return "";
        end
    else
        return "";
    end
end

getItemInventory = function()
    for i,v in pairs(getData('getInventory')) do
        if v.Type == 'Blox Fruit' and (v.Rarity == 4 or subFruit(v.Name) == 'Sound') then
            warn(string.format('founded inventory fruit: %s',subFruit(v.Name)))
            table.insert(data['Fruits Inventory'], subFruit(v.Name))
        elseif table.find(itemWhitelisted,tostring(v.Name)) then
            if v.Name == 'Dark Fragment' then
                warn'found dark fragment'
                table.insert(data['Items Inventory'], string.format('x%s %s',v.Count,tostring(v.Name:gsub("'",""))))
            else
                table.insert(data['Items Inventory'], tostring(v.Name:gsub("'","")))
            end
        end
    end
end

checkFightingStyle = function()
    for i,v in next, fightingstyleList do 
        if CommF:InvokeServer(string.format("Buy%s",v:gsub(" ","")),true) == 1 then
            table.insert(tempData['Fighting Style'],v)
        end
    end

    if #tempData['Fighting Style'] == 6 then
        return "God"
    elseif #tempData['Fighting Style'] > 3 then
        return "3-5"
    else
        return "0-2"
    end
end

getDataInLocalPlayer = function()
    for i,v in next, game:GetService("Players").LocalPlayer:FindFirstChild('Data'):GetChildren() do 
        if table.find(dataFind,v.Name) then
            if string.find(v.Value, '-')  then
                warn(string.format('founded plr fruit: %s',tostring(v.Name:gsub("-(.*)",""))))
                --[[
                if table.find(fruitsUsed,v.Value:gsub("-(.*)","")) then
                    --print'finded whitelist fruit'
                    
                end]]
                data['Basic Data'][v.Name] = string.format("%s%s",v.Value:gsub("-(.*)",""),getStatusAwakened())
            elseif (v.Name == 'Race') then
                data['Basic Data'][v.Name] =  string.format("%s[%s]",v.Value,getRaceAwakening())
            else
                data['Basic Data'][v.Name] =  v.Value
            end
        end
    end   
end

-- ! End Func

-- * Called Function
while true do 

    data = {}
    data['Basic Data'] = {}
    data['Items Inventory'] = {}
    data['Fruits Inventory'] = {}

    tempData = {}
    tempData['Awakened Ability'] = {}
    tempData['Fighting Style'] = {}

    getItemInventory()
    getDataInLocalPlayer()
    data['Basic Data']['Fighting Style'] = checkFightingStyle()

    -- ? Write file

    local a,b = pcall(function()
        writefile(string.format("%sData.json",game:GetService("Players").LocalPlayer.Name),game:GetService("HttpService"):JSONEncode(data))
    end)

    if a then
        print(string.format("The file with name %sData.json has been writed",game:GetService("Players").LocalPlayer.Name))
    else
        warn("got error:",b)
    end
    wait(50 + math.random(1,10))
end
