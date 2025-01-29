advancement revoke @s only combat_log:entity_hurt_player
advancement revoke @s only combat_log:player_hurt_entity

execute if entity @s[tag=combat_log.kill] run return fail

execute unless score @s combat_log.player.time matches 1.. run tellraw @s [{"color":"gray","text":"You are now in combat. If you disconnect, you will "},{"color":"red","text":"die"},{"color":"gray","text":"!"}]

execute store result score @s combat_log.player.time run scoreboard players get time combat_log.settings