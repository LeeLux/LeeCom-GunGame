
#GG.deaths
execute as @a[scores={GG.deaths=1..}] run scoreboard objectives setdisplay sidebar ggs.deaths
scoreboard players reset @a[scores={GG.deaths=1..}] GG.deaths
#GG.killedByPlaye
execute as @a[scores={GG.killedByPlaye=1..}] run scoreboard objectives setdisplay sidebar ggs.killbyplayer
scoreboard players reset @a[scores={GG.killedByPlaye=1..}] GG.killedByPlaye
#GG.kills
execute as @a[scores={GG.kills=1..}] run scoreboard objectives setdisplay sidebar ggs.kills
scoreboard players reset @a[scores={GG.kills=1..}] GG.kills
#GG.level
execute as @a[scores={GG.level=1..}] run scoreboard objectives setdisplay sidebar ggs.level
scoreboard players reset @a[scores={GG.level=1..}] GG.level
#GG.levelRecord
execute as @a[scores={GG.levelRecord=1..}] run scoreboard objectives setdisplay sidebar ggs.levelrecord
scoreboard players reset @a[scores={GG.levelRecord=1..}] GG.levelRecord
#GG.empty
execute as @a[scores={GG.empty=1..}] run scoreboard objectives setdisplay sidebar
scoreboard players reset @a[scores={GG.empty=1..}] GG.empty
#GG.settings
execute as @a[scores={GG.settings=1..}] run scoreboard objectives setdisplay sidebar Settings
scoreboard players reset @a[scores={GG.settings=1..}] GG.settings