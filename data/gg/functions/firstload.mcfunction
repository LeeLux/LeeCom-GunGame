summon marker ~ ~ ~ {Tags: ["firstload"]}
# changing gamerules
gamerule keepInventory true
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule mobGriefing false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule announceAdvancements false
gamerule naturalRegeneration false
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

# default settings
function gg:settings/belowname/show_health
function gg:settings/playerlist/show_level
function gg:settings/instandrespawn/default_instandrespawn
function gg:settings/deathmessage/message_displayed_in_actionbar
function gg:settings/levelupmessage/message_displayed_in_actionbar
function gg:settings/killmessage/displayed_both
function gg:settings/waterkills/true
function gg:settings/setrandomlevel/false
scoreboard players set regenlevel Settings 50
scoreboard players set min random 1
scoreboard players set max random 65
#end