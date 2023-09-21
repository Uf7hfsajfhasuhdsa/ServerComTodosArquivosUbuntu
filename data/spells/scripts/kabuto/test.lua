local removeTime = 1.0
local mana = 1000
local HAVE_CLONE = 655370
local arr = {
{
{0, 0, 0},
{0, 2, 0},
{0, 1, 0}
}
}

local function removeCreatures(cid, creature)
setPlayerStorageValue(cid, HAVE_CLONE, 0)
if isCreature(creature) == TRUE then
doRemoveCreature(creature)
end
end

function onTargetTile(cid, pos)
local creature = doSummonCreature("Haku Edo Tensei", pos)
doCreatureAddMana(cid, -2000)
doCreatureSay(cid, "Edo Tensei", TALKTYPE_ORANGE_1)
doConvinceCreature(cid, creature)
addEvent(removeCreatures, removeTime * 5000, cid, creature)
return TRUE
end

local combat = {}
for i = 1, 1 do
combat[i] = createCombatObject()
setCombatParam(combat[i], COMBAT_PARAM_EFFECT, CONST_ME_POFF)
setCombatArea(combat[i], createCombatArea(arr[i]))
_G["onTargetTile" .. i] = onTargetTile
setCombatCallback(combat[i], CALLBACK_PARAM_TARGETTILE, "onTargetTile" .. i)
end

function onCastSpell(cid, var)
local level = getPlayerLevel(cid)
if getPlayerStorageValue(cid, HAVE_CLONE) < 1 then
if level > 350 then
doCombat(cid, combat[1], var)
else
doCombat(cid, combat[1], var)
end
setPlayerStorageValue(cid, HAVE_CLONE, 1)
else
doPlayerSendCancel(cid, "a crystal spider ja foi sumonada.")
end
end