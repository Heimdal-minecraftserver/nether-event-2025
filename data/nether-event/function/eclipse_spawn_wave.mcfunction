# === Eclipse mob wave spawn ===
# Runs once per player per eclipse loop

# Summon between 4–7 mobs near (but not on) the player
# Use multiple execute lines with small random chance checks for variety
# (We'll increment randomly below)
execute if predicate nether-event:random_50 run scoreboard players set $spawnCount randSpawn 1
execute if predicate nether-event:random_50 unless score $spawnCount randSpawn matches 1.. run scoreboard players set $spawnCount randSpawn 2
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..2 run scoreboard players set $spawnCount randSpawn 3
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..3 run scoreboard players set $spawnCount randSpawn 4
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..4 run scoreboard players set $spawnCount randSpawn 5
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..5 run scoreboard players set $spawnCount randSpawn 6
execute unless score $spawnCount randSpawn matches 1..6 run scoreboard players set $spawnCount randSpawn 7
execute unless score $spawnCount randSpawn matches 1..7 run scoreboard players set $spawnCount randSpawn 8


execute if score $spawnCount randSpawn matches 1 run summon zombified_piglin ~8 ~ ~0
execute if score $spawnCount randSpawn matches 2 run summon zombified_piglin ~5 ~ ~5
execute if score $spawnCount randSpawn matches 3 run summon zombified_piglin ~0 ~ ~8
execute if score $spawnCount randSpawn matches 4 run summon zombified_piglin ~-5 ~ ~5
execute if score $spawnCount randSpawn matches 5 run summon zombified_piglin ~-8 ~ ~0
execute if score $spawnCount randSpawn matches 6 run summon zombified_piglin ~-5 ~ ~-5
execute if score $spawnCount randSpawn matches 7 run summon zombified_piglin ~0 ~ ~-8
execute if score $spawnCount randSpawn matches 8 run summon zombified_piglin ~5 ~ ~-5

execute if predicate nether-event:random_50 run scoreboard players set $spawnCount randSpawn 1
execute if predicate nether-event:random_50 unless score $spawnCount randSpawn matches 1.. run scoreboard players set $spawnCount randSpawn 2
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..2 run scoreboard players set $spawnCount randSpawn 3
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..3 run scoreboard players set $spawnCount randSpawn 4
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..4 run scoreboard players set $spawnCount randSpawn 5
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..5 run scoreboard players set $spawnCount randSpawn 6
execute unless score $spawnCount randSpawn matches 1..6 run scoreboard players set $spawnCount randSpawn 7
execute unless score $spawnCount randSpawn matches 1..7 run scoreboard players set $spawnCount randSpawn 8

execute if score $spawnCount randSpawn matches 1 run summon skeleton ~8 ~ ~0
execute if score $spawnCount randSpawn matches 2 run summon skeleton ~5 ~ ~5
execute if score $spawnCount randSpawn matches 3 run summon skeleton ~0 ~ ~8
execute if score $spawnCount randSpawn matches 4 run summon skeleton ~-5 ~ ~5
execute if score $spawnCount randSpawn matches 5 run summon skeleton ~-8 ~ ~0
execute if score $spawnCount randSpawn matches 6 run summon skeleton ~-5 ~ ~-5
execute if score $spawnCount randSpawn matches 7 run summon skeleton ~0 ~ ~-8
execute if score $spawnCount randSpawn matches 8 run summon skeleton ~5 ~ ~-5

execute if predicate nether-event:random_50 run scoreboard players set $spawnCount randSpawn 1
execute if predicate nether-event:random_50 unless score $spawnCount randSpawn matches 1.. run scoreboard players set $spawnCount randSpawn 2
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..2 run scoreboard players set $spawnCount randSpawn 3
execute if predicate nether-event:random_33 unless score $spawnCount randSpawn matches 1..3 run scoreboard players set $spawnCount randSpawn 4
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..4 run scoreboard players set $spawnCount randSpawn 5
execute if predicate nether-event:random_25 unless score $spawnCount randSpawn matches 1..5 run scoreboard players set $spawnCount randSpawn 6
execute unless score $spawnCount randSpawn matches 1..6 run scoreboard players set $spawnCount randSpawn 7
execute unless score $spawnCount randSpawn matches 1..7 run scoreboard players set $spawnCount randSpawn 8

execute if score $spawnCount randSpawn matches 1 run summon spider ~8 ~ ~0
execute if score $spawnCount randSpawn matches 2 run summon spider ~5 ~ ~5
execute if score $spawnCount randSpawn matches 3 run summon spider ~0 ~ ~8
execute if score $spawnCount randSpawn matches 4 run summon spider ~-5 ~ ~5
execute if score $spawnCount randSpawn matches 5 run summon spider ~-8 ~ ~0
execute if score $spawnCount randSpawn matches 6 run summon spider ~-5 ~ ~-5
execute if score $spawnCount randSpawn matches 7 run summon spider ~0 ~ ~-8
execute if score $spawnCount randSpawn matches 8 run summon spider ~5 ~ ~-5

# Extra randoms to vary total count
# Optional additional random mobs (1–3 extra)
execute if predicate nether-event:random_50 run summon zombified_piglin ~10 ~0 ~-5
execute if predicate nether-event:random_33 run summon skeleton ~-10 ~0 ~3
execute if predicate nether-event:random_25 run summon spider ~5 ~0 ~10

