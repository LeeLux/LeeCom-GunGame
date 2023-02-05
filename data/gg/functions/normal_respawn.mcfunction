#normal (long) respawn method
#aktivate when player pressed "respawn" after death
execute as @a at @s store result score @s DeathTime run data get entity @s DeathTime
execute as @a at @s if score @s DeathTime matches 1.. run tag @s add gg.death.respawn
execute as @a[tag=gg.death.respawn,scores={DeathTime=0}] at @s run function gg:respawn
#end