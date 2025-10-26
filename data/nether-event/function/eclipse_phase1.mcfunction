### Eclipse Phase 1: The Moon Darkens
scoreboard players set global eclipseStage 1
title @a title {"text":"The Moon Darkens","color":"dark_purple"}
title @a subtitle {"text":"The Eclipse Begins...","color":"gray"}

# Clear any existing fog loops
schedule clear nether-event:fog_phase3_loop

time set midnight
weather thunder
playsound minecraft:entity.ender_dragon.growl master @a
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 2 3 0.05 200

# Start the repeating long night loop
function nether-event:eclipse_loop
