# Start Nether fog phase 1
## Set fog phase to 1
scoreboard players set .fogPhase nether_event 1

## Announce fog phase 1 to participants
title @a[tag=nether_event_2025] title {"text":"The air feels heavy...","color":"gray"}

## Start fog phase 1 loop
function nether-event:fog/phase1_loop
