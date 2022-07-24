

# making scoreboards just 0, 1 or 2 in the settings
execute unless score instandRespawn Settings matches 2..4 run scoreboard players set instandRespawn Settings 1
execute unless score level.up Settings matches 2..4 run scoreboard players set level.up Settings 1
execute unless score level.death Settings matches 2..4 run scoreboard players set level.death Settings 1
execute unless score level.death Settings matches 0..2 run scoreboard players set level.death Settings 0
execute unless score water.death Settings matches 0..2 run scoreboard players set water.death Settings 0
execute unless score kill.message Settings matches 2..4 run scoreboard players set kill.message Settings 1
execute unless score min random matches 0..1000000000 run scoreboard players set min random 0
execute unless score max random matches 0..1000000000 run scoreboard players set max random 0
execute unless score level.up.random Settings matches 2..4 run scoreboard players set level.up.random Settings 1
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
execute as @a[scores={level.death=1..}] run function gg:level_death
#end

# generel stuff
execute as @a at @s if block ~ ~ ~ water run function gg:water_kill
execute as @a at @s if block ~ ~1 ~ water run function gg:water_kill
execute as @e[type=item] at @s run data merge entity @s {PickupDelay: 0s}
#execute as @a[tag=!gg.admin] at @s if score @s level matches 1000.. run scoreboard players set @s level 1000
execute as @a at @s if score @s level matches ..0 run scoreboard players set @s level 1
#end

# calling the right method of respawn
execute as @a at @s if score instandRespawn Settings matches 2 run function gg:normal_respawn
execute as @a at @s if score instandRespawn Settings matches 3 run gamerule doImmediateRespawn true
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
#end

# handel triggers
execute as @a[scores={GG.deaths=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.empty=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.killedByPlaye=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.kills=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.level=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.levelRecord=1..}] run function gg:update_scoreboard
execute as @a[scores={GG.settings=1..}] run function gg:update_scoreboard
#end