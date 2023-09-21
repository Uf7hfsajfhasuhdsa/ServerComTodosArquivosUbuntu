-- Killua Automatic Raids System
-- Created by Killua, antigo amoeba13

local raids = {
    {name = "Lider Guard", monsters = {"Jya", "Jya", "Jya"}, boss = "Obito", fromPoss = {x=969, y=848, z=7}, toPoss = {x=1074, y=923, z=7}, dates = {"Friday-12:16", "Saturday-22:12"}, maxMonsters = 100, timeBoss = 120}
}

function isWalkable(pos)-- by Nord / editado por Omega
    if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0
		then return false
	elseif getTopCreature(pos).uid > 0 then
		return false
	elseif isCreature(getTopCreature(pos).uid) then
		return false
    elseif getTileInfo(pos).protection then
		return false
	elseif hasProperty(getThingFromPos(pos).uid, 3) or hasProperty(getThingFromPos(pos).uid, 7) then
		return false
	end
    return true
end
 
function onThink(interval, lastExecution, thinkInterval)
    for _, myRaids in pairs(raids) do
        if table.find(myRaids.dates, os.date("%A-%H:%M")) then
            local pos = {x = math.random(myRaids.fromPoss.x, myRaids.toPoss.x), y = math.random(myRaids.fromPoss.y, myRaids.toPoss.y), z = math.random(myRaids.fromPoss.z, myRaids.toPoss.z)}
            local a = 0
            local b = 60000
            addEvent(doBroadcastMessage, 60000, "A invasao de " .. myRaids.name .. " teve inicio!")
            addEvent(doBroadcastMessage, myRaids.maxMonsters * 500 + myRaids.timeBoss * 1000, "O boss " .. myRaids.boss .. " chegou na invasao!")
            while not(a == myRaids.maxMonsters) do
            local bonsters = math.random(1, #myRaids.monsters)
            local pos = {x = math.random(myRaids.fromPoss.x, myRaids.toPoss.x), y = math.random(myRaids.fromPoss.y, myRaids.toPoss.y), z = math.random(myRaids.fromPoss.z, myRaids.toPoss.z)}
            addEvent(function()
                if isWalkable(pos) then
                    doCreateMonster(myRaids.monsters[bonsters], pos)
                end
            end, b)
                a = a + 1
                b = b + 500
            end
             addEvent(function()
                if isWalkable(pos) then
                doCreateMonster(myRaids.boss, pos)
            end
        end, myRaids.maxMonsters * 500 + myRaids.timeBoss * 1000)
        end
    end
    return true
end