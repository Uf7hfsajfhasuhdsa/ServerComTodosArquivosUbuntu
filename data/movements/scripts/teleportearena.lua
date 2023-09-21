local pos = {
   {x = 1004, y = 902, z = 8},
   {x = 1001, y = 916, z = 8},
   {x = 1025, y = 917, z = 8},
   {x = 1030, y = 909, z = 8},
   {x = 1000, y = 916, z = 7},
   {x = 1001, y = 908, z = 7},
   {x = 1003, y = 901, z = 7},
   {x = 1024, y = 916, z = 7},
   {x = 1020, y = 910, z = 6},
   {x = 1029, y = 917, z = 6},
   {x = 1003, y = 901, z = 6},
   {x = 1000, y = 916, z = 6},
   {x = 1012, y = 904, z = 5},
   {x = 1014, y = 919, z = 5},
   {x = 1030, y = 905, z = 5},
   {x = 1001, y = 916, z = 4},
}
 
function onStepIn(cid)
   doTeleportThing(cid, pos[math.random(#pos)])
   return true
end