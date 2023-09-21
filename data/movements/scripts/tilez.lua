function onStepIn(cid,item,pos)
local wallPos = {x=695,y=620,z=7,stackpos=1}
local wallId = 3435

         if item.uid == 10003 then
            if not getThingfromPos(wallPos).itemid == wallId then
               doCreateItem(wallPos, 4469, 1)
            end
         elseif item.uid == 10002 then
            if getThingfromPos(wallPos).itemid == wallId then
               doRemoveItem(getThingfromPos(wallPos).uid,1)
            end
            end
            return TRUE
            end