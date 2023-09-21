local acombat = createCombatObject()

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 7)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 16)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 43)

setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -14.2, -100, -14.9, -130)

local arr = {
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 3, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1},
{1, 1, 1, 1, 1, 1, 1}
}

local area = createCombatArea(arr)
setCombatArea(acombat, area)

function onTargetTile(cid, pos)
doCombat(cid,combat,positionToVariant(pos))
end

setCombatCallback(acombat, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

function onCastSpell(cid, var)
doPlayerSay(cid, 'Bianco Attack Area', TALKTYPE_ORANGE_1)        
return doCombat(cid, acombat, var)
end 