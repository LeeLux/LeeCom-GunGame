
#level record
execute as @a if score @s ggs.levelrecord < @s level run scoreboard players operation @s ggs.levelrecord = @s level
#end

#no ex points
experience set @a 0 points
#end

# regen in spawn
effect give @a[tag=gg.spawn] minecraft:regeneration 3 0 true 
#end

#repeat it self for the 1s clock
schedule function gg:1smain 1s