function combat_log:utils/clear_chat

tellraw @s [{"text":"Combat Log ","color":"red"},{"text":"Settings:","color":"gray"}]

tellraw @s [{"color":"gray","text":"- Combat Time: "},{"color":"red","score":{"name":"time","objective":"combat_log.settings"}}]

execute if score sounds combat_log.settings matches 1 run tellraw @s [{"text":"- Sounds: ","color":"gray"},{"text":"YES","color":"red"},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","clickEvent":{"action":"run_command","value":"/function combat_log:settings/sounds/no"}}]
execute if score sounds combat_log.settings matches 0 run tellraw @s [{"text":"- Sounds: ","color":"gray"},{"text":"YES","color":"gray","clickEvent":{"action":"run_command","value":"/function combat_log:settings/sounds/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"red"}]

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Settings","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":""}]},"clickEvent":{"action":"run_command","value":"/function combat_log:settings/reset"}}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2