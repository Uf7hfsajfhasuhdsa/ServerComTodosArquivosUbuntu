local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 40)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, 0.0, -100, 0.0, 100)


local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end


function onCastSpell(cid, var)
	local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, }
	local fgh = 0
	local tfgh = 0
	while fgh < 100 do
		tfgh = 250 * fgh
		addEvent(onCastSpell1, tfgh, parameters)
		fgh = fgh + 1
	end
end