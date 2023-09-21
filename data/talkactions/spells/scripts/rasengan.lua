local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -15.0, 150, -15.5, 200)



local arr = {
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 3, 0},
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function km(cid)       
    doPlayerSay(cid, 'Rasengan!', TALKTYPE_ORANGE_1)  
end

function onCastSpell(cid, var)
    addEvent(km,0,cid)
	return doCombat(cid, combat, var)
end
