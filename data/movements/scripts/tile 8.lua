function onStepIn(cid,item,pos)
local wallPos = {x=963,y=1343,z=9,stackpos=1}
local wallId = 1600

			function createItem()
			doCreateItem(wallId,1,wallPos)
			return TRUE
			end
        if item.uid == 4182 then
           if not getThingfromPos(wallPos).itemid == wallId then
              doCreateItem(wallPos, 1600, 1)
           end
        elseif item.uid == 4183 then
           if getThingfromPos(wallPos).itemid == wallId then
              doRemoveItem(getThingfromPos(wallPos).uid,1)
			  addEvent(createItem, 15000)
           end
           end
           return TRUE
           end