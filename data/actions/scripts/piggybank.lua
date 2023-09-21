function onUse(cid, item, frompos, item2, topos) 

math.random(1,5)

if random = 1 then 
   doPlayerAddItem(cid,2148,) 
   doPlayerSay(cid,"... Only gold ...",16) 
elseif rand1 >= 50 and rand1 <= 70 then 
   doPlayerAddItem(cid,2152,rand3) 
   doPlayerSay(cid,"Platinum :)",16) 
elseif rand1 >= 98 then 
   doPlayerAddItem(cid,2160,rand3) 
   doPlayerSay(cid,"Oh My God! Crystal Coin!",16) 
elseif random = 5 then
doTransformItem(item.uid,item.itemid+1) 
doSendAnimatedText(frompos,"~Catch~",18)
end 

   return 1 
end