# === Eclipse mob wave spawn ===
# Runs once per player per eclipse loop

execute store result storage minecraft:macro mob_spawn.x int 1 run random value -16..16
execute store result storage minecraft:macro mob_spawn.z int 1 run random value -16..16

execute store result score .typeMob nether_event_spawn run random value 1..3

execute at @s[tag=nether_event_2025] run function nether-event:eclipse/helpers/spawn_mob with storage minecraft:macro mob_spawn

## Use recursion to summon multiple mobs based on .amountMobs
execute unless score .amountMobs nether_event_spawn matches 0 run scoreboard players remove .amountMobs nether_event_spawn 1

## Summon mob at calculated offset positions
execute as @s unless score .amountMobs nether_event_spawn matches 0 run function nether-event:eclipse/helpers/generate_mob_params