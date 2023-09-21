function onUse(cid, item, item2, frompos, topos, pos)
local config = {
["hanzou helmet"] = {t1 = 11497, t2 = 11498, t5 = 11500, t4 = 11499, t3 = 2137, qnt1 = 1, qnt2 = 1, qnt4 = 1 , qnt5 = 1}, -- t1 = ID do ITEM 1 |---| t2 = ID do ITEM 2 |---| t3 = ID do ITEM a ser FORJADO --
["fire axe"] = {t1 = 2489, t2 = 2487, t3= 2432, qnt1 = 100, qnt2 = 1},
}

local r1 = {x = 1151, y = 802, z = 5, stackpos= 2} -- Posição 1 ( NÃO MEXA NO stackpos= 2 )
local r2 = {x = 1153, y = 802, z = 5, stackpos= 2} -- Posição 2 ( NÃO MEXA NO stackpos= 2 )
local r4 = {x = 1151, y = 803, z = 5, stackpos= 2} -- Posição 2 ( NÃO MEXA NO stackpos= 2 )
local r5 = {x = 1153, y = 803, z = 5, stackpos= 2} -- Posição 2 ( NÃO MEXA NO stackpos= 2 )
local r3 = {x = 1152, y = 802, z = 5} -- Posição do Item a Ser Criado

local q1 = getThingfromPos(r1)
local q2 = getThingfromPos(r2)
local q4 = getThingfromPos(r4)
local q5 = getThingfromPos(r5)
    
    for i, x in pairs(config) do
        if q1.itemid == x.t1 and q2.itemid == x.t2 and q4.itemid == x.t4 and q5.itemid == x.t5 then
                doRemoveItem(q1.uid, x.qnt1)
                doRemoveItem(q2.uid, x.qnt2)
				doRemoveItem(q4.uid, x.qnt4)
				doRemoveItem(q5.uid, x.qnt5)
                addEvent(doCreateItem, 1000, x.t3, 1, r3)
                doSendMagicEffect(r3, 47)
                addEvent(doSendMagicEffect, 900, r3, 39)
                doPlayerSendTextMessage(cid, 22, "Parabéns, Você Forjou Um " .. i .. ".")
                break
        elseif q1.itemid == x.t1 and q2.itemid == x.t2 and q4.itemid == x.t4 and q5.itemid == x.t5 then
                doRemoveItem(q1.uid, x.qnt1)
                doRemoveItem(q2.uid, x.qnt2)
				doRemoveItem(q4.uid, x.qnt4)
				doRemoveItem(q5.uid, x.qnt5)
                addEvent(doCreateItem, 1000, x.t3, 1, r3)
                doSendMagicEffect(r3, 47)
                addEvent(doSendMagicEffect, 900, r3, 39)
                doPlayerSendTextMessage(cid, 22, "Parabéns, Você Forjou Um " .. i .. ".")
                break
                end
            end
return TRUE
end