local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 75)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -25, -26, -27, -28)

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 2, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
setCombatArea(combat1, area1)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

function onCastSpell(cid, var)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 300, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 300, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 200, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+0, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 300, position, eff)
--! segundo quadrado --
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 300, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 300, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 900, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 500, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 500, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+3, y=getCreaturePosition(cid).y+0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 500, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y+0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-1, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 700, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 500, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y+3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y-1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
--! terceiro quadrado --
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 700, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 700, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-2, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 700, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+4, y=getCreaturePosition(cid).y-0, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 900, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+4, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 900, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+4, y=getCreaturePosition(cid).y+2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 900, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+4, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 400, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+2, y=getCreaturePosition(cid).y+4, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y+4, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-0, y=getCreaturePosition(cid).y-2, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
--! quarto quadrado --
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+5, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 900, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x-3, y=getCreaturePosition(cid).y+1, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 700, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y-3, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 600, position, eff)
local eff = 222 -- ID do efeito
local position = {x=getCreaturePosition(cid).x+1, y=getCreaturePosition(cid).y+5, z=getCreaturePosition(cid).z}
addEvent(doSendMagicEffect, 800, position, eff)
local parameters = { cid = cid, var = var, combat1 = combat1 }
addEvent(onCastSpell1, 0000, parameters)
return true
end