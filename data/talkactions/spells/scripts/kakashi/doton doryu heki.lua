local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 199)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 2719)

local arr = {
{0, 0, 0, 0, 0, 0},
{0, 1, 1, 1, 0, 0},
{0, 1, 2, 1, 0, 0},
{0, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
