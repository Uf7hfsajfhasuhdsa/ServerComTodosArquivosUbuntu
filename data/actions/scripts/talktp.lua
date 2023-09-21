local velocidade = 1900 -- 1,9 segundos
local color = TEXTCOLOR_WHITE_EXP
local function loop(valores)

doSendAnimatedText({x=447, y=195, z=7},"Tps Vip",TEXTCOLOR_BLUE)
doSendAnimatedText({x=441, y=195, z=7},"Tps Vip",TEXTCOLOR_BLUE)
doSendAnimatedText({x=444, y=198, z=7},"Templo",TEXTCOLOR_BLUE)
doSendAnimatedText({x=91, y=178, z=7},"Alavancas.",TEXTCOLOR_BLUE)
doSendAnimatedText({x=60, y=115, z=7},"Casas Vip",TEXTCOLOR_BLUE)
doSendAnimatedText({x=84, y=179, z=6},"Vip",TEXTCOLOR_BLUE)
doSendAnimatedText({x=107, y=180, z=7},"Reborn",TEXTCOLOR_BLUE)
doSendAnimatedText({x=298, y=43, z=6},"Casas 1",TEXTCOLOR_BLUE)
doSendAnimatedText({x=298, y=45, z=6},"Casas 2",TEXTCOLOR_BLUE)
doSendAnimatedText({x=298, y=47, z=6},"Casas 3",TEXTCOLOR_BLUE)
doSendAnimatedText({x=86, y=195, z=7},"NovosItem",TEXTCOLOR_BLUE)
doSendAnimatedText({x=364, y=42, z=5},"Yama",TEXTCOLOR_BLUE)
doSendAnimatedText({x=83, y=182, z=7},"Arena",TEXTCOLOR_BLUE)

addEvent(loop,  velocidade, valore) -- Não remova isso
end


function onUse(cid, item, frompos, item2, topos)
doRemoveItem(item.uid,1)
valore = {cid = cid, topos = topos}
addEvent(loop,  velocidade, valore)
end