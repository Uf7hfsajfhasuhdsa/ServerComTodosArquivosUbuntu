function onAttack(cid, target)
  
--------Fist fighting decreasing/increasing attackspeed in lua by MMF--------
  
    local skill = getPlayerSkill(cid, 0)
    local velocidade = math.floor(10000/(0.20*skill)) -- altere aqui para aumentar/diminuir a quantidade de ataques por segundo!
    local item = getPlayerWeapon(cid)
    if item.itemid == 0 then
    return true
    end
        doItemSetAttribute(item.uid,'attackspeed', velocidade)
    
return true
end