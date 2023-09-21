local tempo = 60 -- tempo em segundos.

local effect = {141} -- effect no player, caso queira apenas 1, basta remover os outros numeros.
     

local ml = 5 -- quantos ira aumentar o skill de ML

local skillfist = 10 -- quantos ira aumentar o skill de Fist

local skillsword = 10 -- quantos ira aumentar o skill de Sword

local skillaxe = 10 -- quantos ira aumentar o skill de Axe

local skillclub = 10 -- quantos ira aumentar o skill de Club

local skilldistance = 15 -- quantos ira aumentar o skill de Distance

local skillshield = 20 -- quantos ira aumentar o skill de Shield

local health = 1 -- A cada 1 segundo quantos aumentar de vida

local combat = createCombatObject()

setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
     

local condition = createConditionObject(CONDITION_ATTRIBUTES)

setConditionParam(condition, CONDITION_PARAM_TICKS, tempo*1000)

setConditionParam(condition, CONDITION_PARAM_STAT_MAGICLEVEL, ml)

setConditionParam(condition, CONDITION_PARAM_SKILL_FIST, skillfist)

setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, skillsword)

setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, skillaxe)

setConditionParam(condition, CONDITION_PARAM_SKILL_CLUB, skillclub)

setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, skilldistance)

setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, skillshield)

setConditionParam(condition, CONDITION_PARAM_OUTFIT, outfit)

setCombatCondition(combat, condition)
     

local condition = createConditionObject(CONDITION_REGENERATION)

setConditionParam(condition, CONDITION_PARAM_SUBID, 1)

setConditionParam(condition, CONDITION_PARAM_BUFF, TRUE)

setConditionParam(condition, CONDITION_PARAM_TICKS, tempo*1000)

setConditionParam(condition, CONDITION_PARAM_HEALTHGAIN, health)

setConditionParam(condition, CONDITION_PARAM_HEALTHTICKS, 1000)

setCombatCondition(combat, condition)
            

function magicEffect9(tempo2,tempo3,cid)

if (isCreature(cid)) then
    
if getPlayerStorageValue(cid, 102053) > 0 and getCreatureCondition(cid, CONDITION_REGENERATION, 1) then
        
for i=1, #effect do
        
local position = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y+1, z=getPlayerPosition(cid).z}

doSendMagicEffect(position, effect[i])  
        
end
    
end

end

end


function onCastSpell(cid, var)
local position127 = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}

if getPlayerStorageValue(cid, 102053) ~= 1 or getCreatureCondition(cid, CONDITION_REGENERATION, 1) == false then
    
doCombat(cid, combat, var)
    
tempo2 = 0
    
while (tempo2 ~= (tempo*1000)) do
        
addEvent(magicEffect9, tempo2, tempo2, tempo*1000, cid)
        
tempo2 = tempo2 + 300
    
end
    
setPlayerStorageValue(cid, 102053,1) -- storage verifica transformado, quando = 1 player esta transformado.
    
doCreatureSay(cid, "Sabaku no Tate", TALKTYPE_MONSTER)
    
doSendMagicEffect(position127, 134)

else
    
doPlayerSendCancel(cid, "Desculpe, voçê já está com buff.")

end

end