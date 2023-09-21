local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 2719)

local arr = {
{ 0, 0, 0, 0, 0, 0, },
{ 0, 1, 1, 1, 1, 1, },
{ 0, 1, 0, 0, 0, 1, },
{ 0, 1, 0, 2, 0, 1, },
{ 0, 1, 0, 0, 0, 1, },
{ 0, 1, 1, 1, 1, 1, },
{ 0, 0, 0, 0, 0, 0, },
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
local storage = 5
local time = 20
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
return doCombat(cid, combat, var)
else
    doPlayerSendCancel(cid, "Voçê só pode usar após ["..getPlayerStorageValue(cid, 4) - os.time().."] segundos.")
  end
end