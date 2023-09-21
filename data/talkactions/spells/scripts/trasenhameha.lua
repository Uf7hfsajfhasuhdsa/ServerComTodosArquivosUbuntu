local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -400.0, 100000, -500.0, 200000)



local arr = {
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 3, 1},
}

 
  local area = createCombatArea(arr)

setCombatArea(combat, area)

function trsh(cid)       
    doPlayerSay(cid, 'Triple Rasenhameha!', TALKTYPE_ORANGE_1)  
end

function onCastSpell(cid, var)
    addEvent(trsh,0,cid)
	return doCombat(cid, combat, var)
end
