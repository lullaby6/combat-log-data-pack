scoreboard players reset @s combat_log.player.time

title @s actionbar ""

execute if score sounds combat_log.settings matches 1 at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ .5 2

tellraw @s [{color:"gray",text:"You are no longer in combat!"}]