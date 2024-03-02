
#text message
execute as @a at @s if score instandRespawn Settings matches 2 if score @s DeathTime matches 1 if score water.death Settings matches 1 run tellraw @a [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{ "selector": "@s"},{"text": " went into "},{"text": "Water"},{"text": "!"}]

execute as @a at @s if score instandRespawn Settings matches 3 if score water.death Settings matches 1 run tellraw @a [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{ "selector": "@s"},{"text": " went into "},{"text": "Water"},{"text": "!"}]
#end

#kill the player
kill @s
#end