
execute store result score players random run stopsound @a voice gg:players
tag @a add random_level
execute if entity @a[tag=random_level] run function gg:random_work