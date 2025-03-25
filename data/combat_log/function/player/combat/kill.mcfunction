kill @s

function combat_log:utils/clear_chat
tellraw @s [{color:"gray",text:"You died because you disconnected in combat!"}]