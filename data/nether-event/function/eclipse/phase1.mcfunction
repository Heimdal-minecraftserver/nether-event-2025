# Eclipse Phase 1: The Moon Darkens
## Clear any existing fog loops
schedule clear nether-event:fog/phase3_loop

## Set eclipse phase to 1
scoreboard players set .eclipsePhase nether_event 1
scoreboard players set .fogPhase nether_event 4

## Announce eclipse beginning to participants
title @a[tag=nether_event_2025] title {"text":"The Moon Darkens","color":"dark_purple"}
title @a[tag=nether_event_2025] subtitle {"text":"The Eclipse Begins...","color":"gray"}
playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nether_event_2025] ~ ~ ~ 1 0.5

## Set time to midnight
time add 5000

## Store macro variables for lightning spawn offsets
data modify storage minecraft:macro lightning set value {"x": 0, "z": 0}
## Store macro variables for mob spawn offsets and type
data modify storage minecraft:macro mob_spawn set value {"x": 0, "z": 0}

## Start the repeating long night loop
function nether-event:eclipse/loop
