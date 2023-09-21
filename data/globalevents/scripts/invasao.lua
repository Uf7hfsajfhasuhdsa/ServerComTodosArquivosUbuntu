local i = {
["01:18"] = {nome = "O Itachi e Kisame foi sumonado na city principal, corra para mata-lo.", pos = {x=998, y=898, z=7}, monster = {"1 itachi uchiha", "1 kisame hoshigake}},
["01:19"] = {nome = "O Itachi e Kisame foi sumonado na city principal, corra para mata-lo.", pos = {x=998, y=898, z=7}, monster = {"1 itachi uchiha", "1 kisame hoshigake}},
["01:20"] = {nome = "O Itachi e Kisame foi sumonado na city principal, corra para mata-lo.", pos = {x=998, y=898, z=7}, monster = {"1 itachi uchiha", "1 kisame hoshigake}},
}
function onThink(interval, lastExecution)
hours = tostring(os.date("%X")):sub(1, 5)
tb = i[hours]
if tb then
doBroadcastMessage(hours .. " - " .. tb.nome .. ".")
for _,x in pairs(tb.monster) do
for s = 1, tonumber(x:match("%d+")) do
doSummonCreature(x:match("%s(.+)"), tb.pos)
end
end
end
return true
end