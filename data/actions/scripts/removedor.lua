function onUse(cid, item)

 if (getCreatureSkullType(cid) == SKULL_RED or getCreatureSkullType(cid) == SKULL_BLACK) then

    doRemoveItem(item.uid, 1)

  return doCreatureSetSkullType(cid, SKULL_NONE) and true

 end


 return doPlayerSendCancel(cid, "Você não pode usar este item") and true

end