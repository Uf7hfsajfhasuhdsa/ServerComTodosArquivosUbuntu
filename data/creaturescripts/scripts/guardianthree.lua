function onDeath(cid)
doCreatureSay(cid, 'Do you think that\'s all?', TALKTYPE_MONSTER)
doSendMagicEffect(getThingPos(cid), 2)
return doCreateMonster('Master Guardian Three', getThingPos(cid))
end