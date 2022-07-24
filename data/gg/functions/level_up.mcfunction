
###things
execute if score level.up.random Settings matches 2..3 run function gg:random/start
execute if score level.up.random Settings matches 3 run scoreboard players operation @s level = out random
execute if score level.up.random Settings matches 2 run scoreboard players operation @s level += out random
execute unless score level.up.random Settings matches 2..3 run scoreboard players add @s level 1
function gg:level/manage
scoreboard players remove @s kills 1

#text in actionbar or chat if want to
#actionbar (deafault)
execute if score level.up Settings matches 2 run title @s actionbar [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#chat
execute if score level.up Settings matches 3 run tellraw @s [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#end

#playing sound and regenerat health
#playsound entity.player.levelup player @s ~ ~ ~
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~
effect give @s regeneration 1 250 true
###end
