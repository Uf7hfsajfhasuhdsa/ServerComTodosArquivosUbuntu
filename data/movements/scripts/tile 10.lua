function onStepIn(cid,item,pos)
local wallPos = {x=947,y=1345,z=9,stackpos=1}
local wallId = 1596

			function createItem()
			doCreateItem(wallId,1,wallPos)
			return TRUE
			end
        if item.uid == 4186 then
           if not getThingfromPos(wallPos).itemid == wallId then
              doCreateItem(wallPos, 1596, 1)
           end
        elseif item.uid == 4187 then
           if getThingfromPos(wallPos).itemid == wallId then
              doRemoveItem(getThingfromPos(wallPos).uid,1)
			  addEvent(createItem, 15000)
           end
           end
           return TRUE
           end