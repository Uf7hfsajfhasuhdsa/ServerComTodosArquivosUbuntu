local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, 18)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 39)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1487)

local area = createCombatArea( { {0, 1, 0}, {1, 2, 1}, {0, 1, 0} } )
setCombatArea(combat, area)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end