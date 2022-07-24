#code from CloudWolf !
# Newton-Raphson, 4 iterations approach
# min = lower range
# max = upper range
# out = random number between range


scoreboard players add max random 1
scoreboard players operation #range random = max random
scoreboard players operation #range random -= min random

scoreboard players operation #m1 random = #range random
scoreboard players remove #m1 random 1
function gg:random/next_int
scoreboard players operation out random += min random

scoreboard players reset #m1 random
scoreboard players remove max random 1