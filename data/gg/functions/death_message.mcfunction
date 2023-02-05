#text in actionbar or chat if want to by death
#actionbar (deafault)
execute if score death.message Settings matches 2 run title @s actionbar [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You died and are now level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#chat
execute if score death.message Settings matches 3 run tellraw @s [{"nbt":"Prefix","storage":"minecraft:gungame","interpret":true},{"text": "You died and are now level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#end

#sound
playsound entity.player.burp player @s ~ ~ ~
#end