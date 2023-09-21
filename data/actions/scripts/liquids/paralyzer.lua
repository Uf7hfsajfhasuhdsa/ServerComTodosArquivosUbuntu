function onUse(cid, item, frompos, item2, topos)
if item.uid == 5556 then
if item.itemid == 2143 then
      -- Explosive Barrel
        doSendMagicEffect(topos,6)
          doPlayerAddSpeed(cid,-10000)
    else
        return 0
    end
  end
	doSendMagicEffect(getThingPos(itemEx.uid), CONST_ME_MAGIC_BLUE)
	doCreatureSay(itemEx.uid, "Paralyzed", 1)
	doTransformItem(item.uid, 2156)
	return TRUE
end