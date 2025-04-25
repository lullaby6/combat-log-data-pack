function combat_log:utils/clear_chat

tellraw @s [{"text":"==========[ ","color":"gray"},{"text":"Combat Log","color":"white","bold":true},{"text":" ]==========","color":"gray"}]
tellraw @s [{"color":"gray","text":"Version: "},{"color":"aqua","text":"v1.0.2"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Options:","underlined":true}

tellraw @s ""

tellraw @s [{"color":"gray","text":"- Time: "},{"color":"aqua","bold":true,"text":"- ","hoverEvent":{"action":"show_text","value":[{"text":"Click to remove 1s from combat time"}]},"clickEvent":{"action":"run_command","value":"/function combat_log:config/options/time/remove"}},{"color":"green","bold":true,"score":{"name":"time","objective":"combat_log.config"},"clickEvent":{"action":"suggest_command","value":"/scoreboard players set time combat_log.config "},"hoverEvent":{"action":"show_text","value":[{"text":"To change click or run: /scoreboard players set time combat_log.config <ticks>"}]}},{"color":"aqua","bold":true,"text":" +","hoverEvent":{"action":"show_text","value":[{"text":"Click to add 1s to combat time"}]},"clickEvent":{"action":"run_command","value":"/function combat_log:config/options/time/add"}}]

execute if score sounds combat_log.config matches 1 run tellraw @s [{"color":"gray","text":"- Sounds: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function combat_log:config/options/sounds/disable"},"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Click to disable sounds"}]},"text":"ENABLED"}]
execute if score sounds combat_log.config matches 0 run tellraw @s [{"color":"gray","text":"- Sounds: "},{"bold":true,"clickEvent":{"action":"run_command","value":"/function combat_log:config/options/sounds/enable"},"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to enable sounds"}]},"text":"DISABLED"}]

tellraw @s ""

tellraw @s {"color":"gray","text":"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Sounds","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to reset sounds"}]},"clickEvent":{"action":"run_command","value":"/function combat_log:config/commands/reset/sounds"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Messages","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to reset messages"}]},"clickEvent":{"action":"run_command","value":"/function combat_log:config/commands/reset/messages"}}]
tellraw @s [{"text":"- ","color":"gray"},{"text":"Reset Options","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"Click to reset config"}]},"clickEvent":{"action":"run_command","value":"/function combat_log:config/commands/reset/options"}}]

tellraw @s ""

tellraw @s [{"text":"===========","color":"gray"},{"text":"============","color":"gray"},{"text":"===========","color":"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2