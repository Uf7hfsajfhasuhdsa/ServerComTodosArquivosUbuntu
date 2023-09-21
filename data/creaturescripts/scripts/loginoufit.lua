local vocs = {
[1] = {looktype = 71},
[2] = {looktype = 2},
[3] = {looktype = 80},
[4] = {looktype = 169},
[5] = {looktype = 340},
[6] = {looktype = 96},
[7] = {looktype = 9},
[8] = {looktype = 309},
[9] = {looktype = 52},
[12] = {looktype = 372},
[13] = {looktype = 309},
[14] = {looktype = 209},
[15] = {looktype = 383},
[16] = {looktype = 201},
[17] = {looktype = 259},
[18] = {looktype = 214},
[19] = {looktype = 278},
[20] = {looktype = 237},
[21] = {looktype = 160},
[22] = {looktype = 295},
[23] = {looktype = 21},
[24] = {looktype = 39},
[25] = {looktype = 36},
[26] = {looktype = 82},
[27] = {looktype = 128},
[28] = {looktype = 152},
[29] = {looktype = 401},
[30] = {looktype = 413},
[31] = {looktype = 420},
[32] = {looktype = 92},
[40] = {looktype = 378},
[50] = {looktype = 51},
[33] = {looktype = 315}
}
function onLogin(cid)
if (vocs[getPlayerVocation(cid)]) then
local voca = getPlayerVocation(cid)
local look = vocs[voca].looktype
doCreatureChangeOutfit(cid, {lookType = look})
return true
end
return true
end