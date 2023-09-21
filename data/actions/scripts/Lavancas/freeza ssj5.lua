function onUse(cid, item, frompos, item2, topos)

if item.uid == 3006 then

doPlayerAddHealth(cid,1000)
doSummonCreature("freeza 5",{x=545, y=364, z=7, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
