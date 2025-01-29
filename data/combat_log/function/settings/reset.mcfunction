scoreboard players set time combat_log.settings 200
scoreboard players set sounds combat_log.settings 1

execute if score load combat_log.settings matches 1 run function combat_log:settings

scoreboard players set load combat_log.settings 1