local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -11, -12, -13, -14)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -11, -12, -13, -14)


arr1 = {
        {0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 1, 1, 3, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}

arr2 = {
        {0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 1, 1, 3, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0},
	{0, 0, 0, 1, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0}
}


local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
 
local function onCastSpell1(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat1, parameters.var)
end

local function onCastSpell2(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat2, parameters.var)
end

function onCastSpell(cid, var)
local position1 = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 300, parameters)
doSendMagicEffect(position1, 156)
doSendMagicEffect(position1, 231)
return TRUE
end 