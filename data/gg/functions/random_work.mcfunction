function gg:random/start
tag @r[tag=random_level] add set_random_level
scoreboard players operation @a[tag=set_random_level] level = out random
execute as @a[tag=set_random_level] run function gg:level/manage
tag @a[tag=set_random_level] remove random_level
tag @a remove set_random_level
execute if score players random matches 1.. run scoreboard players remove players random 1
execute if score players random matches 1.. run function gg:random_level_work