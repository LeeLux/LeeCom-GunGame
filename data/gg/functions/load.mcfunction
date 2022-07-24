
# trying to gg:firstload
execute unless entity @e[type=marker,tag=firstload] run function gg:firstload
execute unless entity @e[type=marker,tag=firstload] run summon marker 0 500 0 {Tags: ["firstload"]}

# creating scoreboards
scoreboard objectives add deaths deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add level dummy [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text":"Level"}]
scoreboard objectives add DeathTime dummy
scoreboard objectives add level.death deathCount
scoreboard objectives add Settings dummy
scoreboard objectives add freezTime dummy
scoreboard objectives add level.kills playerKillCount
scoreboard objectives add changelevelto dummy
scoreboard objectives add random dummy
scoreboard objectives add health health {"text":"❤","color":"green"}
scoreboard objectives setdisplay belowName health
scoreboard objectives add expbar level
#stats
scoreboard objectives add ggs.deaths deathCount
scoreboard objectives add ggs.kills playerKillCount
scoreboard objectives add ggs.killbyplayer killed_by:player
scoreboard objectives add ggs.levelrecord dummy [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text":"Levelrecord"}]
#end

# setting constand numbers
scoreboard players set #num random 1103515245
scoreboard players set #-1 random -1
#end

# the % howmutch level is removed when die
execute unless score %remove Settings matches -100000..100000 run scoreboard players set %remove Settings 50
#end

# norlam the 100%. When on 50 20% will be dubblet to 40% ingame.
#just try it out but it inst nessesery to change.
execute unless score 100remove Settings matches -100000..100000 run scoreboard players set 100remove Settings 100
#end

# setting the freezTime in ticks how long a player is freez after i instand Respawn
#set it to 0 if dont want it
execute unless score freezTime Settings matches 0..6000 run scoreboard players set freezTime Settings 20
#end

# set min of min and max of random
#not needed and not in gg:load
#execute unless score min random matches 1..100000000 run scoreboard players set min random 1
#execute unless score max random matches 1..100000000 run scoreboard players set max random 1
#end

# creating and modfy tems
team add gg.player
team modify gg.player color red
team join gg.player @a
team modify gg.player collisionRule never
#end

# sending a reloaded text
tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "Datapack loaded!"}]
#end

# start gg:1smain
function gg:1smain
#end