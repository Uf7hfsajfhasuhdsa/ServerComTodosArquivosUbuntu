-- <Script by jhon992> --

local weaponpar = {2378, 2413}  -- id dos items que sugarão life
local chancepar = 12 -- chance de sugar (10 = 10%, 20 = 20%, 30 = 30%, 1 = 1%, 5 = 5%) e assim por diante

function onAttack(cid, target)
if ((getCreaturePosition(target).x == getCreaturePosition(cid).x or getCreaturePosition(target).x == getCreaturePosition(cid).x+1 or getCreaturePosition(target).x == getCreaturePosition(cid).x-1) and (getCreaturePosition(target).y == getCreaturePosition(cid).y or getCreaturePosition(target).y == getCreaturePosition(cid).y+1 or getCreaturePosition(target).y == getCreaturePosition(cid).y-1)) then
    for i=0, #weaponpar do
    if (getPlayerSlotItem(cid, 5).itemid == weaponpar[i] or getPlayerSlotItem(cid, 6).itemid == weaponpar[i]) then
		    if (math.random(1,100) > (100 - chancepar)) then
                       life = (getCreatureMana(target)*0.1)
				    doPlayerSendTextMessage(cid, 23, "You absoverd "..life.." of mana do "..getCreatureName(target)..".")
                       doSendMagicEffect(getCreaturePosition(target), 0)
                       doCreatureAddMana(target, -life)
                       doCreatureAddMana(cid, life)
				    return true
		    else
		    return true
		    end
    end
    end
end
return true
end