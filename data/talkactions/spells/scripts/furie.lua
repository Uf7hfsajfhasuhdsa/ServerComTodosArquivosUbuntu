local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -9.0, 0, -10.0, 0)




local arr = {
{0, 1, 0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 0, 1, 0},
{0, 0, 1, 1, 2, 1, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0, 1, 0}
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
