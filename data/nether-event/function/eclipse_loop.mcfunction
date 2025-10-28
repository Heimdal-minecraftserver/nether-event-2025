### Eclipse Loop: Ongoing Effects During Eclipse
gamerule doDaylightCycle false

# Ambient atmosphere
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1 1
playsound minecraft:ambient.nether_wastes.loop master @a ~ ~ ~ 1 0.5

# Thick fog swirl
execute as @a at @s run particle minecraft:smoke ~ ~1 ~ 3 2 3 0.05 150
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 3 2 3 0.05 120

# === Randomized mob spawns ===
# Only spawn if there’s no overcrowding nearby
execute as @a at @s unless entity @e[type=!player,distance=..10] run function nether-event:eclipse_spawn_wave

# === Rare lightning effect ===
execute if predicate nether-event:random_50 run scoreboard players set $rand randLightning 1
execute if predicate nether-event:random_50 unless score $rand randLightning matches 1.. run scoreboard players set $rand randLightning 2
execute if predicate nether-event:random_33 unless score $rand randLightning matches 1..2 run scoreboard players set $rand randLightning 3
execute if predicate nether-event:random_33 unless score $rand randLightning matches 1..3 run scoreboard players set $rand randLightning 4
execute if predicate nether-event:random_25 unless score $rand randLightning matches 1..4 run scoreboard players set $rand randLightning 5
execute if predicate nether-event:random_25 unless score $rand randLightning matches 1..5 run scoreboard players set $rand randLightning 6
execute unless score $rand randLightning matches 1..6 run scoreboard players set $rand randLightning 7
execute unless score $rand randLightning matches 1..7 run scoreboard players set $rand randLightning 8

execute if score $rand randLightning matches 1 run summon lightning_bolt ~8 ~ ~0
execute if score $rand randLightning matches 2 run summon lightning_bolt ~5 ~ ~5
execute if score $rand randLightning matches 3 run summon lightning_bolt ~0 ~ ~8
execute if score $rand randLightning matches 4 run summon lightning_bolt ~-5 ~ ~5
execute if score $rand randLightning matches 5 run summon lightning_bolt ~-8 ~ ~0
execute if score $rand randLightning matches 6 run summon lightning_bolt ~-5 ~ ~-5
execute if score $rand randLightning matches 7 run summon lightning_bolt ~0 ~ ~-8
execute if score $rand randLightning matches 8 run summon lightning_bolt ~5 ~ ~-5

# === Schedule next loop ===
schedule function nether-event:eclipse_loop 30s

## TODO:
#specificeer @a met de tag.
#sound command worden geluiden best gelinkt aan de categorie waar ze bij horen, spelers zetten geluiden volgens hun settings. Bij "master" wordt dit gelinkt aan de global sounds, in de plaats daarvan zou ik hem op "ambient" zetten aangezien dat het type sound is dat je wilt bereiken.
#@e[type=!player] detecteerd alle entities die geen spelers zijn (items, boats, ...). Als je enkel executen als er geen mobs in de buurt is detecteer je best voor hostile mobs specifiek.
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.
#De "rare lighting effect" wordt best in een apparte functie gezet. Score setting en summon zijn ook twee apparte functies.
