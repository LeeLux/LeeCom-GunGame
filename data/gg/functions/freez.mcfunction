#
scoreboard players remove @s freezTime 1
effect give @s slowness 1 250 true
effect give @s jump_boost 1 250 true
execute if score @s freezTime matches 0 run effect clear @s slowness
execute if score @s freezTime matches 0 run effect clear @s jump_boost
#end