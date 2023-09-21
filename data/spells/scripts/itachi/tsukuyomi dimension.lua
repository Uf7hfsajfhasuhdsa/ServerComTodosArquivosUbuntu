local time = 10 -- tempo em segundos para voltar
local points = 10 -- o tanto de skills ele ficara mais forte

local condition = createConditionObject(CONDITION_ATTRIBUTES)
setConditionParam(condition, CONDITION_PARAM_TICKS, time*1000)
setConditionParam(condition, CONDITION_PARAM_STAT_MAGICLEVEL, points)
setConditionParam(condition, CONDITION_PARAM_SKILL_FIST, points)
setConditionParam(condition, CONDITION_PARAM_SKILL_SWORD, points)
setConditionParam(condition, CONDITION_PARAM_SKILL_AXE, points)
setConditionParam(condition, CONDITION_PARAM_SKILL_DISTANCE, points)
setConditionParam(condition, CONDITION_PARAM_SKILL_SHIELD, points)

function onCastSpell(cid, var)
local waittime = 100 -- Tempo de exhaustion
local storage = 19291

if exhaustion.check(cid, storage) then
return false
end

exhaustion.set(cid, storage, waittime)
local pos = getCreaturePosition(cid)
local target = getCreatureTarget(cid)
local targetpos = getCreaturePosition(target)
local exceptions = {'Crystal Vilarejo','Gerador Crystal 2','Gerador Crystal 3','trainer', 'aegis', 'god anderson'}

local Tile1 = {x=16, y=24, z=6} -- position onde o player sera teleportado
local Tile2 = {x=16, y=20, z=6} -- position onde o target sera teleportado
local from1,to1 = {x=1508, y=1256, z=7},{x=1510, y=1256, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from2,to2 = {x=1508, y=1258, z=7},{x=1510, y=1258, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from3,to3 = {x=1510, y=1258, z=7},{x=1508, y=1256, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from4,to4 = {x=1504, y=1253, z=7},{x=1515, y=1262, z=7} -- ponto 1 ao ponto 2 da area
local from5,to5 = {x=1508, y=1259, z=7},{x=1510, y=1259, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from6,to6 = {x=1508, y=1262, z=7},{x=1510, y=1262, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from7,to7 = {x=1508, y=1259, z=7},{x=1510, y=1263, z=7}  -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from8,to8 = {x=1510, y=1259, z=7},{x=1508, y=1262, z=7} -- ponto 1 ao ponto 2 da area em que ele sera teleportado
local from9,to9 = {x=965, y=844, z=7},{x=991, y=856, z=7} -- ARENA PVP KONOHA
local from10,to10 = {x=1406, y=828, z=7},{x=1425, y=867, z=7} -- ARENA PVP

local from11,to11 = {x=1715, y=1051, z=7},{x=1802, y=1093, z=7} -- VILAREJO NTOFUN
local from12,to12 = {x=1713, y=1052, z=6},{x=1779, y=1096, z=6} -- VILAREJO NTOFUN
local from13,to13 = {x=1713, y=1052, z=5},{x=1777, y=1096, z=5} -- VILAREJO NTOFUN
local from14,to14 = {x=1733, y=1057, z=8},{x=1797, y=1098, z=8} -- VILAREJO NTOFUN
local from15,to15 = {x=1756, y=1066, z=9},{x=1794, y=1099, z=9} -- VILAREJO NTOFUN
local from16,to16 = {x=1061, y=857, z=7},{x=1078, y=862, z=7} -- ARENA KONOHA NTOFUN

local from17,to17 = {x=496, y=633, z=8},{x=644, y=739, z=8} -- CASTELO BAIXO
local from18,to18 = {x=521, y=712, z=9},{x=552, y=739, z=8} -- CASTELO BAIXO

local from19,to19 = {x=11, y=15, z=6},{x=21, y=25, z=6} -- KAMUI
local from20,to20 = {x=38, y=26, z=6},{x=51, y=40, z=6} -- KAMUI
local from21,to21 = {x=683, y=1088, z=7},{x=694, y=1097, z=7} -- ARENA PVP SUNA
local from22,to22 = {x=883, y=1106, z=7},{x=903, y=1118, z=7} -- ARENA PVP AMEGAKURE

local from23,to23 = {x=1003, y=695, z=7},{x=1036, y=733, z=7} -- ARENA RUSH EVENT
local from24,to24 = {x=1004, y=701, z=8},{x=1028, y=727, z=8} -- ARENA RUSH EVENT BAIXO
local from25,to25 = {x=1004, y=696, z=6},{x=1037, y=734, z=6} -- ARENA RUSH EVENT CIMA

local from26,to26 = {x=1090, y=650, z=6},{x=1197, y=724, z=6} -- ARENA BATALHA NINJA EVENT CIMA
local from27,to27 = {x=1085, y=647, z=7},{x=1201, y=728, z=7} -- ARENA BATALHA NINJA EVENT BAIXO

local from28,to28 = {x=946, y=559, z=7},{x=979, y=596, z=7} -- ARENA ZOMBIE EVENT
local from29,to29 = {x=1003, y=537, z=7},{x=1067, y=596, z=7} -- ARENA FIRE EVENT
local from30,to30 = {x=799, y=541, z=7},{x=832, y=582, z=7} -- ARENA COLLISEU

local from31,to31 = {x=1655, y=1250, z=7},{x=1716, y=1292, z=7} -- MUNDO SABIO 
local from32,to32 = {x=1656, y=1249, z=6},{x=1215, y=1292, z=6} -- MUNDO SABIO EMCIMA

local from33,to33 = {x=757, y=543, z=7},{x=786, y=580, z=7} -- TORNEIO PVP

local from34,to34 = {x=1152, y=735, z=7},{x=1188, y=765, z=7} -- ARENA TAKIGAKURI
local from35,to35 = {x=1341, y=1262, z=5},{x=1358, y=1278, z=5} -- ARENA TAKIGAKURI
local from36,to36 = {x=1341, y=1262, z=5},{x=1348, y=1278, z=4} -- ARENA TAKIGAKURI

local from37,to37 = {x=610, y=541, z=7},{x=694, y=582, z=7} -- ARENA Vilarejo
local from38,to38 = {x=610, y=541, z=6},{x=695, y=583, z=6} -- ARENA Vilarejo
local from39,to39 = {x=609, y=543, z=5},{x=696, y=583, z=5} -- ARENA Vilarejo
local from40,to40 = {x=628, y=547, z=8},{x=685, y=584, z=8} -- ARENA Vilarejo

if isInRange(pos, from1, to1) or isInRange(pos, from2, to2) or isInRange(pos, from3, to3) or isInRange(pos, from4, to4) or isInRange(pos, from5, to5) or isInRange(pos, from6, to6) or isInRange(pos, from7, to7) or isInRange(pos, from8, to8) or isInRange(pos, from9, to9) or isInRange(pos, from10, to10) or isInRange(pos, from11, to11) or isInRange(pos, from12, to12) or isInRange(pos, from13, to13) or isInRange(pos, from14, to14) or isInRange(pos, from15, to15) or isInRange(pos, from16, to16) or isInRange(pos, from17, to17) or isInRange(pos, from18, to18) or isInRange(pos, from19, to19) or isInRange(pos, from20, to20) or isInRange(pos, from21, to21) or isInRange(pos, from22, to22) or isInRange(pos, from23, to23) or isInRange(pos, from24, to24) or isInRange(pos, from25, to25) or isInRange(pos, from26, to26) or isInRange(pos, from27, to27) or isInRange(pos, from28, to28) or isInRange(pos, from29, to29) or isInRange(pos, from30, to30) or isInRange(pos, from31, to31) or isInRange(pos, from32, to32) or isInRange(pos, from33, to33) or isInRange(pos, from34, to34) or isInRange(pos, from35, to35) or isInRange(pos, from36, to36) or isInRange(pos, from37, to37) or isInRange(pos, from38, to38) or isInRange(pos, from39, to39) or isInRange(pos, from40, to40) then
doPlayerSendCancel(cid, "Você nao pode usar o Tsukuyomi aqui!")
return TRUE
end

if not isPlayer(target) then
doPlayerSendCancel(cid, "Você so pode usar essa magia em players!")
return FALSE
end

local function Teleport_Player(cid)
doTeleportThing(cid,pos)
end

local function Teleport_Target(target)
doTeleportThing(target,targetpos)
end

doAddCondition(cid, condition)
doTeleportThing(cid,Tile1)
doTeleportThing(target,Tile2)
doSendMagicEffect(targetpos, 163)
addEvent(Teleport_Player, time*1000, cid)
addEvent(Teleport_Target, time*1000, target)
return TRUE
end