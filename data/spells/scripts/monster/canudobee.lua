local err = createCombatArea(AREA_BEAM7)

function onCastSpell(cid, var) -- Spell 'KameHame HAA' by Jedian

local teibou = {[1] = 83, [2] = 51}

for i = 1, 40 do

  addEvent(doSendDistanceShoot, i*15, {x = getCreaturePosition(cid).x + math.random(-5, 5), y = getCreaturePosition(cid).y + math.random(-4, 4), z = getCreaturePosition(cid).z}, getCreaturePosition(cid), teibou[math.random(1,2)])

end

addEvent(doAreaCombatHealth, 600, cid, COMBAT_PHYSICALDAMAGE, getPlayerLookPos(cid), err, -150000, -250000, 223)

doSendAnimatedText(getPlayerPosition(cid), 'Biju...', 215)

addEvent(doSendAnimatedText, 300, getPlayerPosition(cid), 'Damaa...', 215)

addEvent(doSendAnimatedText, 600, getPlayerPosition(cid), 'AAAAA!', 215)

return true

end