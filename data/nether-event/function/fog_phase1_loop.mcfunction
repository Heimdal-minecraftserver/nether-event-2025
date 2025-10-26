# Light fog pulse (particles and darkness effect)
effect give @a minecraft:darkness 5 0 true
execute as @s at @s run particle minecraft:ash ~ ~1 ~ 2 1 2 0.02 80

# Schedule next fog pulse in 5 minutes
schedule function nether-event:fog_phase1_loop 600s