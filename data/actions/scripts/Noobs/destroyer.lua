function onUse(cid, item, frompos, item2, topos)

if item.uid == 3025 then

doPlayerAddHealth(cid,1000)
doSummonCreature("Destroyer",{x=541, y=364, z=7, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
