# Set global fog progress to phase 2
scoreboard players set global fogProgress 2
title @a title {"text":"The fog spreads...","color":"dark_gray"}
playsound minecraft:ambient.nether_wastes.additions master @a ~ ~ ~ 1 0.7

# Clear any existing fog pulses
schedule clear nether-event:fog_phase1_loop

# Weather change to heavy rain
weather rain

# Stronger fog pulse (particles and effects)
function nether-event:fog_phase2_loop
