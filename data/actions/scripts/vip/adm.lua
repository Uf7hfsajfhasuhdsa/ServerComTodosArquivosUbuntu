function onUse(cid, item, frompos, item2, topos)

if item.uid == 3014 then

doPlayerAddHealth(cid,1000)
doSummonCreature("ADM Bianco",{x=505, y=301, z=6, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
