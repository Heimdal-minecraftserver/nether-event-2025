# Deep fog — stronger darkness, mild blindness
effect give @a minecraft:darkness 8 2 true

# Heavy smoke & ash
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 3 2 3 0.04 200
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 2 3 0.03 150

# Reschedule every 2 minutes
schedule function nether-event:fog_phase3_loop 180s
