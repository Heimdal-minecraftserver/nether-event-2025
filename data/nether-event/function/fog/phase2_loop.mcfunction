# Phase 2 fog pulse loop
## Stronger fog pulse (particles and effects)
effect give @a[tag=nether_event_2025] minecraft:darkness 6 1 true

## Medium fog effect
execute at @a[tag=nether_event_2025] run particle minecraft:ash ~ ~1 ~ 3 1.5 3 0.03 120
execute at @a[tag=nether_event_2025] run particle minecraft:smoke ~ ~1 ~ 2 1 2 0.03 80
playsound minecraft:ambient.cave ambient @a[tag=nether_event_2025] ~ ~ ~ 1 0.7

## Schedule next fog pulse in 5 minutes
schedule function nether-event:fog/phase2_loop 300s
