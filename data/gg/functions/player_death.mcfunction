#text in actionbar or chat if want to by death
#actionbar (deafault)
execute if score level.death Settings matches 2 run title @s actionbar [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "You died! You leveled down to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#chat
execute if score level.death Settings matches 3 run tellraw @s [{ "text": "","color": "green"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "You died! You leveled down to level: "},{ "score": { "name": "@s","objective": "level","value": "error"},"color": "red"},{"text": "!"}]

#end

#sound
playsound entity.player.burp player @s ~ ~ ~
#end