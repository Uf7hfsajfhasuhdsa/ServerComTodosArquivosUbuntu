local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
 
function onCastSpell(cid, var)
local waittime = 0 -- Tempo de exhaustion
local storage = 12026

if exhaustion.check(cid, storage) then
return false
end
local porcentagem = {8, 12, 8, 12}
local health = math.floor(getCreatureMaxHealth(cid) * (porcentagem[math.random(#porcentagem)]/100))
   doCreatureAddHealth(cid, health)  
   exhaustion.set(cid, storage, waittime)
return doCombat(cid, combat, var)
end