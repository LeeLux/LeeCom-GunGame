execute store result storage minecraft:gungame random.min int 1 run scoreboard players get min random
execute store result storage minecraft:gungame random.max int 1 run scoreboard players get max random
execute as @a run function gg:random_work with storage minecraft:gungame random