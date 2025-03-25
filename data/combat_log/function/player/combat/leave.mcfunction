scoreboard players reset @s combat_log.player.time

title @s actionbar ""

function combat_log:message/combat/leave with storage combat_log:config

execute if score sounds combat_log.config matches 1 at @s run function combat_log:sound/combat/leave with storage combat_log:config