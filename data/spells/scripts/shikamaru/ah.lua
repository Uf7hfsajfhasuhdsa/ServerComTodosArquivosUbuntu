local acombat = createCombatObject()

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 41)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -30.0, 20, -37.8, 15)

local arr = {
{0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{1, 0, 0, 1, 1, 1, 0, 0, 1},
{0, 1, 1, 1, 2, 1, 1, 1, 0},
{1, 0, 0, 1, 1, 1, 0, 0, 1},
{0, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 0, 1, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(acombat, area)

function onTargetTile(cid, pos)
doCombat(cid,combat,positionToVariant(pos))
end

setCombatCallback(acombat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
return doCombat(cid, acombat, var)

end