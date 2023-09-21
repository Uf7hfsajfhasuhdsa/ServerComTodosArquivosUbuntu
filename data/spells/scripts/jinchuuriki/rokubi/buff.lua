local tempo = 60 -- tempo em segundos.

local effect = {279} -- effect no player, caso queira apenas 1, basta remover os outros numeros.
     

local ml = 25 -- quantos ira aumentar o skill de ML

local skillfist = 25 -- quantos ira aumentar o skill de Fist

local skillsword = 25 -- quantos ira aumentar o skill de Sword

local skillaxe = 25 -- quantos ira aumentar o skill de Axe

local skillclub = 25 -- quantos ira aumentar o skill de Club

local skilldistance = 25 -- quantos ira aumentar o skill de Distance

local skillshield = 25 -- quantos ira aumentar o skill de Shield

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
            

function magicEffect0001(tempo2,tempo3,cid)

if (isCreature(cid)) then
    
if getPlayerStorageValue(cid, 102053) > 0 and getCreatureCondition(cid, CONDITION_REGENERATION, 1) then
        
for i=1, #effect do
        
local position = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}

doSendMagicEffect(position, effect[i])  
        
end
    
end

end

end


function onCastSpell(cid, var)
local itemid = 11399 -- item que precisa pra usar essa spell
local position127 = {x=getPlayerPosition(cid).x+1, y=getPlayerPosition(cid).y, z=getPlayerPosition(cid).z}

if getPlayerItemCount(cid, itemid) >= 1 then

if getPlayerStorageValue(cid, 102053) ~= 1 or getCreatureCondition(cid, CONDITION_REGENERATION, 1) == false then
    
doCombat(cid, combat, var)
    
tempo2 = 0
    
while (tempo2 ~= (tempo*1000)) do
        
addEvent(magicEffect0001, tempo2, tempo2, tempo*1000, cid)
        
tempo2 = tempo2 + 1000
    
end
    
setPlayerStorageValue(cid, 102053,1) -- storage verifica transformado, quando = 1 player esta transformado.
    
doCreatureSay(cid, "Jinchuuriki No Chakra", TALKTYPE_MONSTER)
    
doSendMagicEffect(position127, 134)


else
    
doPlayerSendCancel(cid, "Desculpe, voçê já está com buff.")

end
else
return false, doPlayerSendCancel(cid, "Você não é um Jinchuuriki")
end
end