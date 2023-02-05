
# setting new level (or adding one) and giveing the new gear
execute if score setrandomlevel Settings matches 1 run function gg:setradomlevel
execute unless score setrandomlevel Settings matches 1 run scoreboard players add @s level 1
function gg:level/manage
scoreboard players remove @s kills 1
#end

# text in actionbar or chat if want to
#actionbar
execute if score levelup.message Settings matches 2 run title @s actionbar [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]
#chat
execute if score levelup.message Settings matches 3 run tellraw @s [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You leveled up to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]
#end

# playing sound and regenerat health
#playsound entity.player.levelup player @s ~ ~ ~
playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~
execute unless score @s level >= regenlevel Settings run effect give @s instant_health 1 250 true
#end