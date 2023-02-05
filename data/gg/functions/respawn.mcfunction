clear @s
execute if score setrandomlevel Settings matches 1 run function gg:setradomlevel
function gg:level/manage
tag @s remove gg.death.respawn