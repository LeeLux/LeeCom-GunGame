#message
tellraw @a [{ "text": "Datapack ","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": " uninstalled!"}]
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