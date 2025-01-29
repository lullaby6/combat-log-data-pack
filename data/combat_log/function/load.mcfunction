scoreboard objectives add combat_log.player.leave minecraft.custom:minecraft.leave_game
scoreboard objectives add combat_log.player.death deathCount

scoreboard objectives add combat_log.player.time dummy

scoreboard objectives add combat_log.settings minecraft.custom:minecraft.leave_game
execute unless score load combat_log.settings matches 1 run function combat_log:settings/reset