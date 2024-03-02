tellraw @a [{ "text": "Datapack: ","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "started!"},{ "text": " (v0.3)","color": "gold"}]


#changing gamerules
gamerule keepInventory true
gamerule doMobSpawning false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule announceAdvancements false
#end

#difficulty
difficulty peaceful
#end

#adventure
gamemode adventure @a[gamemode=!creative]
#end

#creating scoreboards
scoreboard objectives add deaths deathCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add level dummy
scoreboard objectives add DeathTime dummy
scoreboard objectives add level.death deathCount
scoreboard objectives add Settings dummy
scoreboard objectives add freezTime dummy
scoreboard objectives add level.kills playerKillCount
scoreboard objectives add changelevelto dummy
scoreboard objectives add random dummy
scoreboard objectives add health health {"text":"❤","color":"green"}
scoreboard objectives setdisplay below_name health
#stats
scoreboard objectives add stat.deaths deathCount
scoreboard objectives add stat.kills playerKillCount
scoreboard objectives add stat.totalkills totalKillCount
scoreboard objectives add stat.killbyplaye killed_by:player
#end

defaultgamemode adventure

#setting constand numbers
scoreboard players set #num random 1103515245
scoreboard players set #-1 random -1
#end

#the % howmutch level is removed when die
execute unless score %remove Settings matches -100000..100000 run scoreboard players set %remove Settings 50
#end

#norlam the 100%. When on 50 20% will be dubblet to 40% ingame.
#just try it out but it inst nessesery to change.
execute unless score 100remove Settings matches -100000..100000 run scoreboard players set 100remove Settings 100
#end

#setting the freezTime in ticks how long a player is freez after i instand Respawn
#set it to 0 if dont want it
execute unless score freezTime Settings matches 0..6000 run scoreboard players set freezTime Settings 20
#end

#set min of min and max of random
execute unless score min random matches 1..100000000 run scoreboard players set min random 1
execute unless score max random matches 1..100000000 run scoreboard players set max random 1
#end

#make the level scoreboard better looking
scoreboard objectives modify level displayname [{"text": "","color": "green"},{"text":"Level "},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "]","bold": true}]
#end

scoreboard objectives setdisplay sidebar level

#creating and modfy tems
team add gg.player
team modify gg.player color red
team join gg.player @a
team modify gg.player collisionRule never
#end