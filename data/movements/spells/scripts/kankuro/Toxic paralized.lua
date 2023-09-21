--POX PARALYZE BY MIMOW--

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHISICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 190)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -20.0, -0, -20.0, -0)


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 218)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -20.0, 0, -20.0, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 190)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -20.0, 0, -20.0, 0)


local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
--setConditionParam(condition, CONDITION_PARAM_SPEED, -700)
setConditionFormula(condition, -0.9, 0, -0.9, 0)
setCombatCondition(combat, condition)



arr1 = { 
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
 {0, 1, 0, 1, 0, 1, 0, 1, 0},
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
 {0, 1, 0, 1, 3, 1, 0, 1, 0},
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
 {0, 1, 0, 1, 0, 1, 0, 1, 0},
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
}

arr3 = { 
 {0, 1, 0, 1, 0, 1, 0, 1, 0},
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
 {0, 1, 0, 1, 1, 1, 0, 1, 0},
 {1, 0, 1, 1, 3, 1, 1, 0, 1},
 {0, 1, 0, 1, 1, 1, 0, 1, 0},
 {1, 0, 1, 0, 1, 0, 1, 0, 1},
 {0, 1, 0, 1, 0, 1, 0, 1, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
 
local function onCastSpell1(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat1, parameters.var)
end
 
local function onCastSpell2(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat2, parameters.var)
end

local function onCastSpell3(parameters)
    return isPlayer(parameters.cid) and doCombat(parameters.cid, combat3, parameters.var)
end
 
function onCastSpell(cid, var)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 200, parameters)
addEvent(onCastSpell3, 300, parameters)
return TRUE
end  