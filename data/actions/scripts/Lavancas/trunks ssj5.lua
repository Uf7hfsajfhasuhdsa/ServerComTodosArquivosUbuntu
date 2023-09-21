function onUse(cid, item, frompos, item2, topos)

if item.uid == 3007 then

doPlayerAddHealth(cid,1000)
doSummonCreature("trunks Ssj5",{x=555, y=348, z=7, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
