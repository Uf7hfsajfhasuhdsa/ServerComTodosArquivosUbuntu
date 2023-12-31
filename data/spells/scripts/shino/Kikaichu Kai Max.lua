local MIN = 5000 -- minimo de drain
local MAX = 15000 -- max de drain

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0, -MIN, 0, -MAX)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, 0, -MIN, 0, -MAX)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, 0, -MIN, 0, -MAX)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_MANADRAIN)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, 0, -MIN, 0, -MAX)


arr1 = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 3, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0}
}

arr2 = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 3, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0}
}

arr3 = {
{0, 0, 0, 0, 0},
{0, 1, 1, 1, 0},
{0, 1, 3, 1, 0},
{0, 1, 1, 1, 0},
{0, 0, 0, 0, 0}
}

arr4 = {
{0, 0, 0, 0, 0},
{1, 1, 1, 1, 1},
{1, 1, 3, 1, 1},
{1, 1, 1, 1, 1},
{0, 0, 0, 0, 0}
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)

local function onCastSpell1(parameters)

return isPlayer(parameters.cid) and doCombat(parameters.cid, combat1, parameters.var)
end

local function onCastSpell2(parameters)
return isPlayer(parameters.cid) and doCombat(parameters.cid, combat2, parameters.var)
end

local function onCastSpell3(parameters)
return isPlayer(parameters.cid) and doCombat(parameters.cid, combat3, parameters.var)
end

local function onCastSpell4(parameters)
return isPlayer(parameters.cid) and doCombat(parameters.cid, combat4, parameters.var)
end

function onCastSpell(cid, var)

local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 400, parameters)
addEvent(onCastSpell3, 800, parameters)
addEvent(onCastSpell4, 1000, parameters)



return true
end