# Eclipse Phase 2: The Seal Shatters
## Clear existing eclipse loop
schedule clear nether-event:eclipse/loop

## Set eclipse phase to 2
scoreboard players set .eclipsePhase nether_event 2

## Announce seal shattering to participants
title @a title {"text":"THE SEAL SHATTERS!","color":"red"}
playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nether_event_2025]
execute at @a[tag=nether_event_2025] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 5
execute at @a[tag=nether_event_2025] run particle minecraft:flame ~ ~1 ~ 4 2 4 0.05 300

## Fire eruption near players
execute as @a[tag=nether_event_2025] run function nether-event:eclipse/helpers/spawn_fire

## Schedule end event after 60 seconds
schedule function nether-event:end_event 60s
