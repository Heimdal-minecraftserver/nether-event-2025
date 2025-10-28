# Nether fog phase 3 loop function
## Deep fog — stronger darkness, mild blindness
effect give @a[tag=nether_event_2025] minecraft:darkness 8 2 true

## Heavy smoke & ash
execute at @a[tag=nether_event_2025] run particle minecraft:smoke ~ ~1 ~ 3 2 3 0.04 200
execute at @a[tag=nether_event_2025] run particle minecraft:ash ~ ~1 ~ 3 2 3 0.03 150

## Reschedule every 3 minutes
schedule function nether-event:fog/phase3_loop 180s
playsound minecraft:entity.warden.ambient ambient @a[tag=nether_event_2025]
