#normal (long) respawn method
gamerule doImmediateRespawn false
#aktivate when player pressed "respawn" after death
execute as @a at @s store result score @s DeathTime run data get entity @s DeathTime
execute as @a at @s if score @s DeathTime matches 1.. run tag @s add gg.death.respawn
execute as @a[tag=gg.death.respawn,scores={DeathTime=0}] at @s run clear @s
execute as @a[tag=gg.death.respawn,scores={DeathTime=0}] at @s run function gg:level/manage
execute as @a[tag=gg.death.respawn,scores={DeathTime=0}] at @s run tag @s remove gg.death.respawn
#end