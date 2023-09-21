local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -300.0, 100000, -400.0, 200000)



local arr = {
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 1, 0},
{0, 3, 0},
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function rsh(cid)       
    doPlayerSay(cid, 'Rasenhameha!', TALKTYPE_ORANGE_1)  
end

function onCastSpell(cid, var)
    addEvent(rsh,0,cid)
	return doCombat(cid, combat, var)
end
