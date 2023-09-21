local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)
setCombatParam(combat, COMBAT_PARAM_CREATEITEM, 1497)


function onCastSpell1(parameters)
      doCombat(cid, combat, var)
end

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var, combat = combat }
addEvent(onCastSpell1, 2000, parameters) 
addEvent(onCastSpell1, 4000, parameters) 
addEvent(onCastSpell1, 6000, parameters)
addEvent(onCastSpell1, 8000, parameters) 
addEvent(onCastSpell1, 12000, parameters) 
addEvent(onCastSpell1, 14000, parameters) 
addEvent(onCastSpell1, 16000, parameters)
addEvent(onCastSpell1, 18000, parameters) 
addEvent(onCastSpell1, 20000, parameters) 
addEvent(onCastSpell1, 22000, parameters) 
addEvent(onCastSpell1, 24000, parameters)
addEvent(onCastSpell1, 26000, parameters) 
addEvent(onCastSpell1, 28000, parameters)
addEvent(onCastSpell1, 30000, parameters) 
stopEvent(onCastSpell1, 30500, removeitem)
end