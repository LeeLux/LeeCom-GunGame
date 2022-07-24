#code from CloudWolf !

function gg:random/lcg

scoreboard players operation #temp random = out random
scoreboard players operation out random %= #range random
scoreboard players operation #temp random -= out random
scoreboard players operation #temp random += #m1 random
execute if score #temp random matches ..-1 run function gg:random/next_int