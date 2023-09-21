local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
 
function onCastSpell(cid, var)
local porcentagem = {11, 15, 11, 15}
local health = math.floor(getCreatureMaxHealth(cid) * (porcentagem[math.random(#porcentagem)]/100))
   doCreatureAddHealth(cid, health)   
return doCombat(cid, combat, var)
end
