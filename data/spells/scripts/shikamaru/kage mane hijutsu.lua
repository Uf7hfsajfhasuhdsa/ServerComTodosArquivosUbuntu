local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 134)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -30, -31, -32, -33)


arr1 = {
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 3, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)

local storage = 4
local time = 18
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)

tempo = 5

local target = getCreatureTarget(cid)

function doCancelParalyze()
if isCreature(target) then

mayNotMove(target, false)
end
return true
end

mayNotMove(target, true)
addEvent(doCancelParalyze, tempo * 1000)
local parameters = { cid = cid, var = var, combat1 = combat1}
addEvent(onCastSpell1, 100, parameters)
local eff = 207 -- Efeito
local target = getCreatureTarget(cid)
local position = {x=getCreaturePosition(target).x+1, y=getCreaturePosition(target).y, z=getCreaturePosition(target).z}
doSendMagicEffect(position, eff)
return true
else
     doPlayerSendCancel(cid, "Exausted")
  end
end