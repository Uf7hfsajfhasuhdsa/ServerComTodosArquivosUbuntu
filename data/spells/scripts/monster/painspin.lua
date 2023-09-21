local function doPushCreature(target, cid)
    if target > 0 then
            if not isNpc(target) then
                    local position = getThingPosition(cid)
                    local fromPosition = getThingPosition(target)
                    local x = ((fromPosition.x - position.x) < 0 and -1 or ((fromPosition.x - position.x) == 0 and 0 or 1))
                    local y = ((fromPosition.y - position.y) < 0 and -1 or ((fromPosition.y - position.y) == 0 and 0 or 1))
                    local toPosition = {x = fromPosition.x + x, y = fromPosition.y + y, z = fromPosition.z}
                    if doTileQueryAdd(target, toPosition) == 1 and getTileInfo(toPosition).house == false then
                            doTeleportThing(target, toPosition, true)
                    end
            end
    end
end
local spell = {}
spell.config = {

    [1] = {
            damageType = 1,
            areaEffect = 75,
            area = {
                    {0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 1, 1, 1, 0, 0},
                    {0, 0, 1, 3, 1, 0, 0},
                    {0, 0, 1, 1, 1, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0},
                    {0, 0, 0, 0, 0, 0, 0}
            }       
    }
}
           
spell.combats = {}
for _, config in ipairs(spell.config) do
    local combat = createCombatObject()
    setCombatParam(combat, COMBAT_PARAM_TYPE, config.damageType)
    setCombatParam(combat, COMBAT_PARAM_EFFECT, config.areaEffect)
    function onTargetCreature(cid, target)
            doPushCreature(target, cid)
    end
    setCombatCallback(combat, CALLBACK_PARAM_TARGETCREATURE, "onTargetCreature")
    setCombatArea(combat, createCombatArea(config.area))
    table.insert(spell.combats, combat)
end
function onCastSpell(cid, var)
local eff = 26 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+0, z=getCreaturePosition(cid).z}
doSendMagicEffect(position, eff)
    for n = 1, #spell.combats do
            addEvent(doCombat, (n * 150) - 150, cid, spell.combats[n], var)
    end
    return true
end