# Start Nether fog phase 2
## Clear previous fog pulse schedule
schedule clear nether-event:fog/phase1_loop

## Set fog phase to 2
scoreboard players set .fogPhase nether_event 2

## Announce fog phase 2 to participants
title @a[tag=nether_event_2025] title {"text":"The fog spreads...","color":"dark_gray"}

# Weather change to heavy rain
weather rain 7d

# Stronger fog pulse (particles and effects)
function nether-event:fog/phase2_loop
