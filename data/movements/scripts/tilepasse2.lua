function onStepIn(cid, item, position, fromPosition)

level = 50

if getPlayerSkillLevel(cid, SKILL_CLUB) > level then
doTeleportThing(cid, fromPosition, true)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
doPlayerSendCancel(cid,"Voce precisa ter o passe " .. level .. " ou menor para passar.")
end
return TRUE
end