#message
tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "Datapack uninstalled! (you can now remove it from the word folder!)"}]
#end

#uninstall all scoreboards
scoreboard objectives remove deaths
scoreboard objectives remove kills
scoreboard objectives remove level
scoreboard objectives remove DeathTime
scoreboard objectives remove Settings
scoreboard objectives remove freezTime
scoreboard objectives remove level.kills
scoreboard objectives remove changelevelto
scoreboard objectives remove random
scoreboard objectives remove health
scoreboard objectives remove expbar

scoreboard objectives remove ggs.deaths
scoreboard objectives remove ggs.killbyplayer
scoreboard objectives remove ggs.kills
scoreboard objectives remove ggs.level
scoreboard objectives remove ggs.levelrecord

# triggers
scoreboard objectives remove GG.level
scoreboard objectives remove GG.deaths
scoreboard objectives remove GG.kills
scoreboard objectives remove GG.killedByPlaye
scoreboard objectives remove GG.levelRecord
scoreboard objectives remove GG.empty
scoreboard objectives remove GG.settings

# admins triggers
scoreboard objectives remove GGA.level.add
scoreboard objectives remove GGA.level.remove
scoreboard objectives remove GGA.level.set
scoreboard objectives remove GGA.settings
#end
#end

#removing all teams
team empty gg.player
team remove gg.player
#end

#killing firstload
kill @e[tag=firstload,type=marker]
#end

#storage could be cleared too, but no its just a storage