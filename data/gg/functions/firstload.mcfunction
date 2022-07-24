
# changing gamerules
gamerule keepInventory true
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule doImmediateRespawn true
gamerule announceAdvancements false
#end

# storage setup
data merge storage gungame {Prefix: '[{"text":"","color":"green"}, {"text":"[","bold": true}, {"text": "GunGame","color":"red"}, {"text":"] ","bold": true}]'}
#end

# difficulty
difficulty peaceful
#end

# adventure
gamemode adventure @a[gamemode=!creative]
defaultgamemode adventure
#end

# default sidebar
scoreboard objectives setdisplay sidebar ggs.level
#end