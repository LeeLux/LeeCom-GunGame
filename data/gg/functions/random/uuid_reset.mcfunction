#code from CloudWolf !
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg random run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp random run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 random run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 random run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg random += #temp random
scoreboard players operation #lcg random += #temp1 random
scoreboard players operation #lcg random += #temp2 random
kill @e[tag=uuid]