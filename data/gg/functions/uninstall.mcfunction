#message
tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "Datapack uninstalled! (you can now remove it drom the word!)"}]
#end

#uninstall all scoreboards
scoreboard objectives remove deaths
scoreboard objectives remove kills
scoreboard objectives remove level
scoreboard objectives remove DeathTime
scoreboard objectives remove level.death
scoreboard objectives remove Settings
scoreboard objectives remove freezTime
scoreboard objectives remove level.kills
scoreboard objectives remove changelevelto
scoreboard objectives remove random
scoreboard objectives remove health
#end

#removing all teams
team empty gg.player
team remove gg.player
#end

#killing firstload
kill @e[tag=firstload,type=marker]
#end

#storage can be cleared but no