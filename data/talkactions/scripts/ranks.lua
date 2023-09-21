local ranks = {

['speed'] = {0},

['club'] = {1},
['sword'] = {2},
['taijutsu'] = {3},
['distance'] = {4},
['shield'] = {5},
['fish'] = {6},
['ninjutsu'] = {7},
['level'] = {8},

}


function onSay(cid, words, param)

local msg = string.lower(param)
if ranks[msg] ~= nil then
str = getHighscoreString((ranks[msg][1]))
else
str = getHighscoreString((8))
end
doShowTextDialog(cid,2535, str)
return TRUE

end