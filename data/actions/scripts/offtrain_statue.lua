-- example 'action' when you click on statue:
function onUse(cid, item, fromPosition, itemEx, toPosition)
if(item.itemid == 18488) then -- sword
  doCreatureSetStorage(cid, 62669, SKILL_SWORD)
elseif(item.itemid == 18489) then -- axe
  doCreatureSetStorage(cid, 62669, SKILL_AXE)
elseif(item.itemid == 388) then -- mlvl
  doCreatureSetStorage(cid, 62669, SKILL__MAGLEVEL)
elseif(item.itemid == 18490) then -- club
  doCreatureSetStorage(cid, 62669, SKILL_CLUB)
elseif(item.itemid == 18491) then -- distannce
  doCreatureSetStorage(cid, 62669, SKILL_DISTANCE)
end
-- we remove player, so it will execute onLogout(cid) function and save time of training start
doRemoveCreature(cid)
end