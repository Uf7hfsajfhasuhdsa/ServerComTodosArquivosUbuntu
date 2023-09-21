local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 27)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 5000, 0, 10000)

function onCastSpell(cid, var)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Healing 5k~10k.")
playerpos = getPlayerPosition(cid)
doSendAnimatedText(playerpos, "VIP", 200)
	return doCombat(cid, combat, var)
end
