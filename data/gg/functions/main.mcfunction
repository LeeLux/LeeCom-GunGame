

# making scoreboards just 0, 1 or 2 in the settings
execute unless score instandRespawn Settings matches 1..3 run scoreboard players set instandRespawn Settings 1
execute unless score levelup.message Settings matches 1..3 run scoreboard players set levelup.message Settings 1
execute unless score death.message Settings matches 1..3 run scoreboard players set death.message Settings 1
execute unless score kill.message Settings matches 1..3 run scoreboard players set kill.message Settings 1
execute unless score belowName Settings matches 1..3 run scoreboard players set belowName Settings 1
execute unless score playerList Settings matches 1..3 run scoreboard players set playerList Settings 1
execute unless score min random matches 0..10000 run scoreboard players set min random 1
execute unless score max random matches 0..10000 run scoreboard players set max random 1
execute unless score %remove Settings matches 0..100 run scoreboard players set %remove Settings 50
execute unless score waterkills Settings matches 0..1 run scoreboard players set waterkills Settings 0
execute unless score setrandomlevel Settings matches 0..1 run scoreboard players set setrandomlevel Settings 0
#end

# spawn protection
execute as @e[type=marker,tag=firstload] at @s run tag @a[distance=6..] remove gg.spawn
execute as @e[type=marker,tag=firstload] at @s run tag @a[distance=..6] add gg.spawn
execute as @a[tag=gg.spawn] run function gg:setspawnprotectionitem
execute as @a[tag=!gg.spawn] run function gg:removespawnprotectionitem
#end

# change level from player
execute as @a if score @s changelevelto > @s level run scoreboard players add @s level 1
execute as @a if score @s changelevelto < @s level run scoreboard players remove @s level 1
execute as @a unless score @s changelevelto = @s level if score @s changelevelto matches 0.. run function gg:level/manage
execute as @a if score @s changelevelto = @s level run scoreboard players reset @s changelevelto
#end

# set exp-bar to level
execute as @a if score @s expbar < @s level run experience add @s 1 levels
execute as @a if score @s expbar > @s level run experience add @s -1 levels
#end

# calling the kill message
execute as @a[scores={level.kills=1..}] at @s run function gg:player_kills
#end

# death, respawn
#removing a % from the level number by death
execute as @a[scores={deaths=1..}] run function gg:death
#end

# generel stuff
execute if score waterkills Settings matches 1 as @a at @s if block ~ ~ ~ water run kill @s
execute as @a at @s if block ~ ~ ~ lava run kill @s
execute as @e[type=item] at @s run data merge entity @s {PickupDelay: 0s}
#execute as @a[tag=!gg.admin] at @s if score @s level matches 1000.. run scoreboard players set @s level 1000
execute as @a at @s if score @s level matches ..0 run scoreboard players set @s level 1
#end

# calling the right method of respawn
execute if score instandRespawn Settings matches 2 as @a at @s run function gg:normal_respawn
#end

# calling level up by kill
execute as @a[scores={kills=1..}] at @s run function gg:level_up
#end

#add player to team
team join gg.player @a
#end

# set ggs.level
scoreboard players reset * ggs.level
execute as @a run scoreboard players operation @s ggs.level = @s level
#end

# take all recipies to dont allow any player to craft
recipe take @a *
#end

# calling the freez if somebody has a freezTimer on him
execute as @a[scores={freezTime=1..}] at @s run function gg:freez
#end

# ramdom
execute if score out random matches ..0 run scoreboard players operation out random *= #-1 random
#end

# how many online players?
#??? IDK what i wanted to do here???
#end

# enable triggers for everyone
scoreboard players enable @a GG.deaths
scoreboard players enable @a GG.killedByPlaye
scoreboard players enable @a GG.kills
scoreboard players enable @a GG.level
scoreboard players enable @a GG.levelRecord
scoreboard players enable @a GG.empty
scoreboard players enable @a GG.settings

# enable Admin triggers Admins with a tag of GGA.Admin
scoreboard players enable @a[tag=GGA.Admin] GGA.level.add
scoreboard players enable @a[tag=GGA.Admin] GGA.level.remove
scoreboard players enable @a[tag=GGA.Admin] GGA.level.set
scoreboard players enable @a[tag=GGA.Admin] GGA.settings
#end

# handel triggers
execute as @a[scores={GG.deaths=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.empty=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.killedByPlaye=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.kills=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.level=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.levelRecord=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.settings=1..}] run function gg:update_scoreboard
# admins
execute as @a[scores={GGA.level.add=1..}] run function gg:admin/trigger_add
execute as @a[scores={GGA.level.remove=1..}] run function gg:admin/trigger_remove
execute as @a[scores={GGA.level.set=1..}] run function gg:admin/trigger_set
execute as @a[scores={GGA.settings=1..}] run function gg:settings/settings
scoreboard players reset @a[scores={GGA.settings=1..}] GGA.settings
#changelevelto
#end