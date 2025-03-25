scoreboard players remove @s combat_log.player.time 1

execute if score @s combat_log.player.time matches 1.. run return run title @s actionbar [{color:"gray",text:"Combat: "},{color:"red","score":{"name":"@s","objective":"combat_log.player.time"}}]

execute if score @s combat_log.player.time matches 0 run function combat_log:player/combat/leave