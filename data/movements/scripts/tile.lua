function onStepIn(cid,item,pos)
local wallPos = {x=693,y=617,z=7,stackpos=1}
local wallId = 4469

         if item.uid == 10000 then
            if not getThingfromPos(wallPos).itemid == wallId then
               doCreateItem(wallPos, 4469, 1)
            end
         elseif item.uid == 10001 then
            if getThingfromPos(wallPos).itemid == wallId then
               doRemoveItem(getThingfromPos(wallPos).uid,1)
            end
            end
            return TRUE
            end