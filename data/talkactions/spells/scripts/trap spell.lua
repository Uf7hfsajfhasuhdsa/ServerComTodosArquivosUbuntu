local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 33)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -3.1, -100, -5.2, -400)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 27)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -3.1, -200, -5.2, -250)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_CREATEITEM, 6707)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -1.3, -30, -1.7, 0)

local arr1 = {
{1,1,1,1,1,1,1},
{1,0,0,0,0,0,1},
{1,0,1,1,1,0,1},
{1,0,1,3,1,0,1},
{1,0,1,1,1,0,1},
{1,0,0,0,0,0,1}, 
{1,1,1,1,1,1,1},
}

local arr2 = {
{0,1,1,1,1,1,0},
{1,1,1,1,1,1,1},
{1,1,1,1,1,1,1},
{1,1,1,3,1,1,1},
{1,1,1,1,1,1,1},
{1,1,1,1,1,1,1},
{1,1,1,1,1,1,1},
{0,1,1,1,1,1,0},
}

local arr3 = {
{0,0,0,0,0,0,0},
{0,1,1,1,1,1,0},
{0,1,0,0,0,1,0},
{0,1,0,3,0,1,0},
{0,1,0,0,0,1,0},
{0,1,1,1,1,1,0}, 
{0,0,0,0,0,0,0},
}


local ARea1 = createCombatArea(arr2)
setCombatArea(combat1,ARea1)

local ARea2 = createCombatArea(arr1)
setCombatArea(combat2,ARea2)

local ARea3 = createCombatArea(arr1)
setCombatArea(combat3,ARea3)

function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3}
addEvent(onCastSpell1, 0, parameters)
addEvent(onCastSpell2, 300, parameters)
addEvent(onCastSpell3, 350, parameters)

end