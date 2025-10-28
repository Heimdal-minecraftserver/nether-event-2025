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

## TODO:
#Line 7-14 komen 3 keren voor in deze functie, 1 keer is voldoende normaal.
#Al deze code wordt zo goed als tergelijk gerund, lijkt me heel heavy, kan deze opgesplitst worden in meerdere functies?
#"$" worden normaal gebruikt om macro's aan te duiden, wat hier niet het geval is. best een ander teken gebruiken om aan te duiden dat het niet om een echte speler gaat.
#Bij het activeren van deze functie sordt gespecificeerd dat de speler zelf deze commands moet uitvoeren, ik zie wel niet metteen waarom dat zo is aangezien met fake players wordt gewerkt die de scores voor alle spelers bepalen. Om je functie meer foolproof te maken zou ik met de speler als reference werken in plaats van de fake player.
# Score setting en summon staan best in twee apparte functies.

##Randomisation:
#Ik vermoed dat de randomisation van de hostiles beter kan werken via macro's en de /random command https://minecraft.wiki/w/Commands/random. Als je die gebruikt voor zowel aantal als positie kan je deze functie een stuk korter maken.