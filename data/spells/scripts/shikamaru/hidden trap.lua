local c = {
	createItem = {2158, 1}, -- itemid, quantidade
	removeTime = 60 * 20000 -- tempo em que ira remover
}

function onCastSpell(cid, var)
local storage = 4
local time = 2
		if exhaustion.check(cid, storage) == false then
        exhaustion.set(cid, storage, time)
	local pos = getThingPos(cid)
	doCreateItem(c.createItem[1], c.createItem[2], pos)
	addEvent(function()
		local thing = getTileItemById(pos, c.createItem[1]).uid
		if(thing ~= 0) then
			doRemoveItem(thing, c.createItem[2])
		end
	end, c.removeTime)
	return true
	else
     doPlayerSendCancel(cid, "Exausted")
  end
end