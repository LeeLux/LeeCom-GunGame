#making scoreboards just 0, 1 or 2 in the settings
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

#change level from player to
execute as @a if score @s changelevelto > @s level run scoreboard players add @s level 1
execute as @a if score @s changelevelto < @s level run scoreboard players remove @s level 1
execute as @a unless score @s changelevelto = @s level if score @s changelevelto matches 0.. run function gg:level/manage
execute as @a if score @s changelevelto = @s level run scoreboard players reset @s changelevelto
#end

#calling the kill message
execute as @a[scores={level.kills=1..}] at @s run function gg:player_kills
#end

#death, respawn
#removing a % from the level number by death
execute as @a[scores={level.death=1..}] run function gg:level_death
#end

#generel stuff
execute as @a at @s if block ~ ~ ~ water run function gg:water_kill
execute as @a at @s if block ~ ~1 ~ water run function gg:water_kill
execute as @e[type=item] at @s run data merge entity @s {PickupDelay:0s}
execute as @a[tag=!gg.admin] at @s if score @s level matches 1000.. run scoreboard players set @s level 1000
execute as @a at @s if score @s level matches ..0 run scoreboard players set @s level 1
#end

#calling the right method of respawn
execute as @a at @s if score instandRespawn Settings matches 2 run function gg:normal_respawn
execute as @a at @s if score instandRespawn Settings matches 3 run gamerule doImmediateRespawn true
#end

#calling level up by kill
execute as @a[scores={kills=1..}] at @s run function gg:level_up
#end

#add player to team
team join gg.player @a
#end

#take all recipies not allow any player to craft
recipe take @a *
#end

#calling the freez if somebody has a freezTimer on him
execute as @a[ scores={freezTime=1..}] at @s run function gg:freez
#end

#ramdom
execute if score out random matches ..0 run scoreboard players operation out random *= #-1 random
#end

#removing expiriance
#experience set @a 0 levels
#experience set @a 0 points
#end

#how many online players?

#end