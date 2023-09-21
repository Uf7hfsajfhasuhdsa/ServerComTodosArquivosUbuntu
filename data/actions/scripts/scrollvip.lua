local remove = true -- Remover ao usar?
 
local cfg = {
    [2193] = {newVoc = 6, newOut = {lookType = 96}, levelMax = 30}, -- Itachi
	[2196] = {newVoc = 17, newOut = {lookType = 259}, levelMax = 30}, -- Anbu
	[2192] = {newVoc = 12, newOut = {lookType = 372}, levelMax = 30}, -- Killer Bee
	[2200] = {newVoc = 24, newOut = {lookType = 39}, levelMax = 30}, --  Madara
	[2201] = {newVoc = 26, newOut = {lookType = 82}, levelMax = 30},	-- Minato
	[2219] = {newVoc = 32, newOut = {lookType = 92}, levelMax = 30},	-- Tsunade
	[2220] = {newVoc = 30, newOut = {lookType = 413}, levelMax = 30}, -- Tobirama
	[2199] = {newVoc = 20, newOut = {lookType = 237}, levelMax = 30}, -- Jiraiya
	[2197] = {newVoc = 19, newOut = {lookType = 278}, levelMax = 30}, -- Hashirama
	[2198] = {newVoc = 16, newOut = {lookType = 201}, levelMax = 30}, -- Kisame
	[2218] = {newVoc = 29, newOut = {lookType = 401}, levelMax = 30}, -- Hidan
 
function onUse(cid, item)
    local t = cfg[item.itemid]
    
    if t then
        if getPlayerLevel(cid) <= t.levelMax then
            
            doPlayerSetVocation(cid, t.newVoc)
            doPlayerSendCancel(cid, "Parabéns, você trocou seu personagem.")
            doCreatureChangeOutfit(cid, t.newOut)
            doSendMagicEffect(getThingPos(cid), 5)
 
            if remove then
                doRemoveItem(item.uid, 1)
            end
        end
 
        doPlayerSendCancel(cid, "Apenas jogadores com level inferior a "..t.levelMax.." podem usar.")
    end
    return true
end