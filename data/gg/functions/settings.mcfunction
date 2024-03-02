
#show all the settings in chat
tellraw @s [{"text": "","color": "blue"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "Settings","bold": true},{"text": "  ------------ "},{"text": "click to ","color": "gray"},{"text": "[","bold": true},{"text": "Uninstall","color": "red","hoverEvent": { "action": "show_text","value": [{"text": "click to delete all scoreboards!","color": "gray"}]},"clickEvent": { "action": "run_command","value": "/function gg:uninstall"}},{"text": "]","bold": true}]

#instandRespawn
tellraw @s [{"text": "","color": "blue"},{"text": "> instandRespawn is on setting: "},{ "score": { "name": "instandRespawn","objective": "Settings","value": "error"},"color": "red"},{"text": "    | set to: ","color": "gray"},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set instandRespawn Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Deafault instandRespawn!","color": "gray"}]}},{"text": "[2] ","clickEvent": { "action": "run_command","value": "/scoreboard players set instandRespawn Settings 2"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Normal Minecraft death","color!": "gray"}]}},{"text": "[3]","clickEvent": { "action": "run_command","value": "/scoreboard players set instandRespawn Settings 3"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "instandRespawn with freez","color!": "gray"}]}}]

#level.death
tellraw @s [{"text": "","color": "blue"},{"text": "> level.death is on setting: "},{ "score": { "name": "level.death","objective": "Settings","value": "error"},"color": "red"},{"text": "          | set to: ","color": "gray"},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.death Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "No text for level.death!","color": "gray"}]}},{"text": "[2] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.death Settings 2"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Text in actionbar!","color": "gray"}]}},{"text": "[3]","clickEvent": { "action": "run_command","value": "/scoreboard players set level.death Settings 3"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Text in Chat!","color": "gray"}]}}]

#level.up
tellraw @s [{"text": "","color": "blue"},{"text": "> level.up is on setting: "},{ "score": { "name": "level.up","objective": "Settings","value": "error"},"color": "red"},{"text": "              | set to: ","color": "gray"},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "No text for level.up!","color": "gray"}]}},{"text": "[2] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up Settings 2"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Text in actinbar!","color": "gray"}]}},{"text": "[3]","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up Settings 3"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Text in Chat!","color": "gray"}]}}]

#kill.message
tellraw @s [{"text": "","color": "blue"},{"text": "> kill.message is on setting: "},{ "score": { "name": "kill.message","objective": "Settings","value": "error"},"color": "red"},{"text": "         | set to: ","color": "gray"},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set kill.message Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Deafault is showing + level of killer!","color": "gray"}]}},{"text": "[2] ","clickEvent": { "action": "run_command","value": "/scoreboard players set kill.message Settings 2"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Is hsowing + level from both!","color": "gray"}]}},{"text": "[3] ","clickEvent": { "action": "run_command","value": "/scoreboard players set kill.message Settings 3"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Kill message is hiding!","color": "gray"}]}}]

#water.death
tellraw @s [{"text": "","color": "blue"},{"text": "> water.death message is on: "},{ "score": { "name": "water.death","objective": "Settings","value": "error"},"color": "red"},{"text": "       | set to: ","color": "gray"},{"text": "[0] ","clickEvent": { "action": "run_command","value": "/scoreboard players set water.death Settings 0"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Deafault no text!","color": "gray"}]}},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set water.death Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Text show in Chat!","color": "gray"}]}}]

#%remove
tellraw @s [{"text": "","color": "blue"},{"text": "> %remove is on: "},{ "score": { "name": "%remove","objective": "Settings","value": "error"},"color": "red"},{ "text": "%"},{"text": "                   | set to: ","color": "gray"},{"text": "[click] ","clickEvent": { "action": "suggest_command","value": "/scoreboard players set %remove Settings "},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "click and put a number!","color": "gray"}]}}]

#freezTime
tellraw @s [{"text": "","color": "blue"},{"text": "> freezTime is on: "},{ "score": { "name": "freezTime","objective": "Settings","value": "error"},"color": "red"},{ "text": " ticks"},{"text": "            | set to: ","color": "gray"},{"text": "[click] ","clickEvent": { "action": "suggest_command","value": "/scoreboard players set freezTime Settings "},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "click and put a number!","color": "gray"}]}}]

#changetolevel
tellraw @s [{ "text": "","color": "blue"},{"text": "> Change "},{"text": "level from any player"},{"text": "     | set to: ","color": "gray"},{ "text": "[change] ","color": "red","clickEvent": { "action": "suggest_command","value": "/scoreboard players set @s changelevelto "},"hoverEvent": { "action": "show_text","value": [{"text": "Click and change name to set ther level!","color": "gray"}]}},{ "text": "[random","color": "red","clickEvent": { "action": "run_command","value": "/function gg:random_level"},"hoverEvent": { "action": "show_text","value": [{"text": "Click and all players will get a random level!","color": "gray"}]}},{ "text": "[i]","color": "blue","clickEvent": { "action": "suggest_command","value": "/function gg:random_level"},"hoverEvent": { "action": "show_text","value": [{"text": "Click to get command!","color": "gray"}]}},{"text": "]","color": "red"}]

#hide show sidbar
tellraw @s [{ "text": "","color": "blue"},{"text": "> Hide and show "},{"text": "level sidbar"},{"text": "         | set to: ","color": "gray"},{ "text": "[hide] ","color": "red","clickEvent": { "action": "run_command","value": "/scoreboard objectives setdisplay sidebar"},"hoverEvent": { "action": "show_text","value": [{"text": "Click to hide scoreboard on sidbar!","color": "gray"}]}},{"text": "[show]","color": "red","clickEvent": { "action": "run_command","value": "/scoreboard objectives setdisplay sidebar level"},"hoverEvent": { "action": "show_text","value": [{"text": "Show the level scoreboard in sidbar!","color": "gray"}]}}]

#random use
tellraw @s [{"text": "","color": "blue"},{"text": "> Use random amount by level up "},{ "score": { "name": "level.up.random","objective": "Settings","value": "error"},"color": "red"},{"text": " | set to: ","color": "gray"},{"text": "[1] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up.random Settings 1"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Deafault is not useing it!","color": "gray"}]}},{"text": "[2] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up.random Settings 2"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Use random level up amount!","color": "gray"}]}},{"text": "[3] ","clickEvent": { "action": "run_command","value": "/scoreboard players set level.up.random Settings 3"},"color": "red","hoverEvent": { "action": "show_text","value": [{"text": "Set to random level by level up!","color": "gray"}]}}]

#set min and max from random
tellraw @s [{ "text": "","color": "blue"},{"text": "> min "},{ "score": { "name": "min","objective": "random","value": "error"},"color": "red"},{"text": " and max "},{ "score": { "name": "max","objective": "random","value": "error"},"color": "red"},{"text": " of random"},{"text": "         | click to set: ","color": "gray"},{ "text": "[min] ","color": "red","clickEvent": { "action": "suggest_command","value": "/scoreboard players set min random "},"hoverEvent": { "action": "show_text","value": [{"text": "Click and set the min number of random!","color": "gray"}]}},{"text": "[max]","color": "red","clickEvent": { "action": "suggest_command","value": "/scoreboard players set max random "},"hoverEvent": { "action": "show_text","value": [{"text": "Click and set the max number of random!","color": "gray"}]}}]

tellraw @s [{"text": "","color": "blue"},{"text": "","color": "blue"},{"text": "[","bold": true},{ "text": "GunGame","color": "red"},{ "text": "] ","bold": true},{"text": "--------------------------------------"}]
#end