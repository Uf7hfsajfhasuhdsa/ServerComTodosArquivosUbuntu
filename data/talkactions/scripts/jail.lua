function onSay(cid,words,param)
local t = string.explode(param, ",")

local config = {
[1] = {x=1521, y=824, z=8},
[2] = {x=1521, y=824, z=8},
[3] = {x=1521, y=824, z=8},
[4] = {x=1521, y=824, z=8},
[5] = {x=1521, y=824, z=8},
[6] = {x=1521, y=824, z=8},
}

local from1,to1 = {x=1022, y=905, z=10},{x=1030, y=907, z=10}
local from2,to2 = {x=1022, y=907, z=10},{x=1030, y=915, z=10}
local temple = {x=1028, y=848, z=5} -- cordenadas do templo
local Player_Name = getPlayerByNameWildcard(t[1])

if not t[1] then
doPlayerSendTextMessage(cid, 27, "Digite o nome do jogador.")
return TRUE
end

if not Player_Name then
doPlayerSendTextMessage(cid, 27, "O jogador nao existe ou esta offline.")
return TRUE
end

local Player_Pos = getThingPos(Player_Name)

local function Unjail()
if isPlayer(cid) then
doTeleportThing(Player_Name, temple)
end
end

if not tonumber(t[2]) or tonumber(t[2]) < 1 or t[2] == "" then
doPlayerSendTextMessage(cid, 27, "Coloque a quantidade de tempo em minutos!")
return TRUE
end

if getPlayerAccess(Player_Name) >= 2 then
doPlayerSendTextMessage(cid, 27,"Voce nao pode prender um GM ou alguem superior a ele.")
return TRUE
end

if isInRange(Player_Pos, from1, to1) or isInRange(Player_Pos, from2, to2) then
doPlayerSendTextMessage(cid, 27,"O jogador ja esta preso!")
return TRUE
end

doTeleportThing(Player_Name, config[math.random(#config)])
doSendAnimatedText(Player_Pos, "JAIL!", TEXTCOLOR_RED)
doPlayerSendTextMessage(Player_Name, 25,"Voce foi preso por fazer algo contra as regras! e ficara preso por "..(tonumber(t[2])).." minuto"..(tonumber(t[2]) > 1 and "s" or "")..".")
doPlayerSendTextMessage(cid, 27,"Voce prendeu o jogador "..t[1].." por "..(tonumber(t[2])).." minuto"..(tonumber(t[2]) > 1 and "s" or "")..".")
addEvent(Unjail, t[2]*60*1000, Player_Name)
return TRUE
end