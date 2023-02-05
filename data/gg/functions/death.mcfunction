#
scoreboard players operation #-remove Settings = #100remove Settings
scoreboard players operation #-remove Settings -= %remove Settings
scoreboard players operation @s level *= #-remove Settings
scoreboard players operation @s level /= #100remove Settings
scoreboard players set @s[scores={level=..0}] level 1
function gg:death_message

function gg:respawn
scoreboard players reset @s deaths
execute if score instandRespawn Settings matches 3 unless score freezTime Settings matches 0 run scoreboard players operation @s freezTime = freezTime Settings
#end