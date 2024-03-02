#things
execute store result storage minecraft:gungame random.min int 1 run scoreboard players get min random
execute store result storage minecraft:gungame random.max int 1 run scoreboard players get max random
function gg:random_work with storage minecraft:gungame random
execute if score level.up.random Settings matches 3 run scoreboard players operation @s level = out random
execute if score level.up.random Settings matches 2 run scoreboard players operation @s level += out random
execute unless score level.up.random Settings matches 2..3 run scoreboard players add @s level 1
function gg:level/manage
scoreboard players remove @s kills 1

#text in actionbar or chat if want to
#actionbar (deafault)
execute if score level.up Settings matches 2 run title @s actionbar [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]
#chat
execute if score level.up Settings matches 3 run tellraw @s [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]
#end

#playing sound and regenerat health
#playsound entity.player.levelup player @s ~ ~ ~
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~
effect give @s regeneration 1 250 true
#end
