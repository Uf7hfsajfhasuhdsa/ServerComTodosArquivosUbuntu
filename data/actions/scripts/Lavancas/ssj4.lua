function onUse(cid, item, frompos, item2, topos)

if item.uid == 3009 then

doPlayerAddHealth(cid,1000)
doSummonCreature("Gogeta Ssj4",{x=792, y=378, z=8, stackpos=253})
doSummonCreature("Goku Ssj4",{x=787, y=382, z=8, stackpos=253})
doSummonCreature("Gohan Ssj4",{x=791, y=385, z=8, stackpos=253})
doSummonCreature("Vegeta Ssj4",{x=799, y=385, z=8, stackpos=253})
doSummonCreature("Trunks Ssj4",{x=782, y=385, z=8, stackpos=253})

doSendMagicEffect(topos,14)
else
doPlayerSendCancel(cid,"Desculpe, não foi possivel!.")
end
return 1
end
