
#level record
execute as @a if score @s ggs.levelrecord < @s level run scoreboard players operation @s ggs.levelrecord = @s level
#end

#set stats to 0 if the number is not between -2147483648 and 2147483647
execute as @a unless score @s level matches -2147483648..2147483647 run scoreboard players set @s level 0
execute as @a unless score @s ggs.levelrecord matches -2147483648..2147483647 run scoreboard players set @s ggs.levelrecord 0
#end

#no ex points
experience set @a 0 points
#end

#repeat it self for the 1s clock
schedule function gg:1smain 1s