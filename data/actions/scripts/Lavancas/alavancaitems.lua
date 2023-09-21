function getItemsInPos(items, pos) -- function by vodka
for i = 1,#items do 
local stack = getTileItemById(pos, items[i][1])
if stack.uid > 0 and math.max(1, stack.type) >= items[i][2] then
if i == #items then
check = true
end
else
check = false
end
end
return check
end
function doRemoveItensInPos(items, pos) -- function by vodka
local items = type(items) == "table" and items or {items}  
      for i = 1, table.maxn(items) do 
    doRemoveItem(getThingFromPos({x=pos.x,y=pos.y,z=pos.z,stackpos=1}).uid)
  end
  return nil
end
local t = {
{items = {{5904,10}} , pos = {x=1718, y=989, z=7}},
{items = {{2195,1}} , pos = {x=1720, y=989, z=7}}
}
topos = {x=160, y=54, z=7}
function onUse(cid, item, fromPosition, itemEx, toPosition)
for _, k in ipairs(t) do
        if not getItemsInPos(k.items, k.pos) then
        doPlayerSendCancel(cid, 'Está faltando items na mesa.') 
return true
end
        end
        for _, v in ipairs(t) do
doRemoveItensInPos(v.items, v.pos)
end
     doTeleportThing(cid, topos)
     doSendMagicEffect(topos, CONST_ME_TELEPORT)
        doTransformItem(item.uid, item.itemid == 1945 and 1946 or 1945)
return true
end