# Set global fog progress to phase 3
scoreboard players set global fogProgress 3
title @a title {"text":"The fog consumes all...","color":"dark_red"}
playsound minecraft:entity.warden.ambient master @a

# Clear any existing fog pulses
schedule clear nether-event:fog_phase2_loop

# Set time to late night and stop daylight cycle
weather thunder
time set 13000
gamerule doDaylightCycle false

# Heavy fog effect
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 3 1.5 3 0.03 200
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 1.5 3 0.03 150

# Start the repeating deep fog loop
function nether-event:fog_phase3_loop
