local combat = createCombatObject()
local tempo = 4000 -- tempo em milissegundos de duraçaõ do efeito ( 1000 == 1 segundo)
local chance = 12 -- chance em porcentagem do "evento" acontecer (50 = 50%)
local delay = 1000 -- delay do efeito GRÁFICO
local storage = 7098 -- storage de controle
local exhausted = 0.2 -- tempo em minutos para poder paralyzar algm dnv, pode usar numero fracionado 0.1 = 6 segundos, 1 = 1 minuto


setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatFormula(combat, COMBAT_FORMULA_SKILL, 90, 90, 90, 90)

function onUseWeapon(cid, var)
	if(math.random(1,100) <= chance and getPlayerStorageValue(cid,storage) <= os.time()) then
		doCreatureSetNoMove(getCreatureTarget(cid), true)
		addEvent(BackMove,tempo,getCreatureTarget(cid))
		addEvent(Effects,0,getCreatureTarget(cid),tempo,delay)
		setPlayerStorageValue(cid,storage, os.time() + exhausted*60)
		return doCombat(cid, combat, var)
	end
return doCombat(cid, combat, var)
end

function BackMove(cid)
	doCreatureSetNoMove(cid, false)
end

function Effects(cid,tempo,delay)
local efeito = 42 -- ICE STRIKE
local CorMSG = 70 -- COR DA MENSAGEM 
	doSendMagicEffect(getCreaturePosition(cid), efeito)
	doSendAnimatedText(getCreaturePosition(cid), "Paralyzed", CorMSG)
	if (tempo >= delay) then
		addEvent(Effects,delay,cid,tempo-delay,delay)
	end
end