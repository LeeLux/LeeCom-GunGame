#sending the kill message
execute if score kill.message Settings matches 1 run tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{ "selector": "@a[scores={level.death=1..}]"},{"text": " was killed by "},{ "selector": "@s"},{"text": "{"},{"score":{"name":"@s","objective": "level","value": "0"},"color": "red"},{"text": "}"}]

execute if score kill.message Settings matches 2 run tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{ "selector": "@p[scores={level.death=1..}]"},{"text": "{"},{"score":{"name":"@p[scores={level.death=1..}]","objective": "level","value": "0"},"color": "red"},{"text": "}"},{"text": " was killed by "},{ "selector": "@s"},{"text": "{"},{"score":{"name":"@s","objective": "level","value": "0"},"color": "red"},{"text": "}"}]
#end

scoreboard players remove @s level.kills 1