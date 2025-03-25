function combat_log:utils/clear_chat

tellraw @s [{text:"==========[ ",color:"gray"},{text:"Combat Log",color:"white",bold:true},{text:" ]==========",color:"gray"}]
tellraw @s [{color:"gray",text:"Version: "},{color:"aqua",text:"v1.0.2"}]

tellraw @s ""

tellraw @s {color:"gray",text:"Options:","underlined":true}

tellraw @s ""

execute if score sounds combat_log.config matches 1 run tellraw @s [{color:"gray",text:"- Sounds: "},{bold:true,"click_event":{"action":"run_command","command":"/function combat_log:config/option/sounds/disable"},color:"green","hoverEvent":{"action":"show_text","value":[{text:"Click to disable sounds"}]},text:"ENABLED"}]
execute if score sounds combat_log.config matches 0 run tellraw @s [{color:"gray",text:"- Sounds: "},{bold:true,"click_event":{"action":"run_command","command":"/function combat_log:config/option/sounds/enable"},color:"gray","hoverEvent":{"action":"show_text","value":[{text:"Click to enable sounds"}]},text:"DISABLED"}]

tellraw @s ""

tellraw @s {color:"gray",text:"Commands:","underlined":true}

tellraw @s ""

tellraw @s [{text:"- ",color:"gray"},{text:"Reset Sounds",color:"red","hoverEvent":{"action":"show_text","contents":[{text:"Click to reset sounds"}]},"click_event":{"action":"run_command","command":"/function combat_log:config/command/reset/sound"}}]
tellraw @s [{text:"- ",color:"gray"},{text:"Reset Messages",color:"red","hoverEvent":{"action":"show_text","contents":[{text:"Click to reset messages"}]},"click_event":{"action":"run_command","command":"/function combat_log:config/command/reset/message"}}]
tellraw @s [{text:"- ",color:"gray"},{text:"Reset Config",color:"red","hoverEvent":{"action":"show_text","contents":[{text:"Click to reset config"}]},"click_event":{"action":"run_command","command":"/function combat_log:config/command/reset/config"}}]

tellraw @s ""

tellraw @s [{text:"===========",color:"gray"},{text:"============",color:"gray"},{text:"===========",color:"gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2