
clear @s
item replace entity @s hotbar.0 with netherite_sword{Unbreakable:1b} 1
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b} 1
item replace entity @s armor.feet with netherite_boots{Unbreakable:1} 1
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b,Enchantments:[{id:"protection",lvl:1}]} 1
item replace entity @s armor.head with netherite_helmet{Unbreakable:1b} 1

tellraw @a [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{ "selector": "@s"},{"text": " has reached level "},{"score":{"name": "@s","objective": "level"},"color": "dark_red"},{"text": "!"}]