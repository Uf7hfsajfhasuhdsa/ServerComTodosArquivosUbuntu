function onUse(cid, item, frompos, item2, topos)

if item.uid == 3013 then

doPlayerAddHealth(cid,1000)
doSummonCreature("super gogeta",{x=505, y=292, z=6, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
