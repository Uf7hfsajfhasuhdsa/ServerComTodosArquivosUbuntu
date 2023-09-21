local combat = createCombatObject() 
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 51)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -37, -38, -39, -40)

function onCastSpell(cid, var)
local itemid = 11396 -- item que precisa pra usar essa spell

if getPlayerItemCount(cid, itemid) >= 1 then
return doCombat(cid, combat, var)
else
doPlayerSendCancel(cid, "Jinchuuriki not found.")
return false
end
end