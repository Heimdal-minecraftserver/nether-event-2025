# Stronger fog pulse (particles and effects)
effect give @a minecraft:darkness 6 0 true
effect give @a minecraft:blindness 6 0 true

# Medium fog effect
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 1.5 3 0.03 120
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 2 1 2 0.03 80

# Schedule next fog pulse in 5 minutes
schedule function nether-event:fog_phase2_loop 300s