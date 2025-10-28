### Eclipse Phase 3: The Seal Shatters
scoreboard players set global eclipseStage 2

title @a title {"text":"THE SEAL SHATTERS!","color":"red"}
playsound minecraft:entity.ender_dragon.growl master @a
execute at @a run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 5
execute at @a run particle minecraft:flame ~ ~1 ~ 4 2 4 0.05 300
weather thunder

# Clear existing eclipse loop
schedule clear nether-event:eclipse/loop

# Fire eruption near players
execute as @a at @s run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 minecraft:fire replace minecraft:air

# Enable Nether
gamerule allowEnteringNetherUsingPortals true

# Schedule cleanup sunrise
schedule function nether-event:cleanup 60s

## TODO:
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.
#sound command worden geluiden best gelinkt aan de categorie waar ze bij horen, spelers zetten geluiden volgens hun settings. Bij "master" wordt dit gelinkt aan de global sounds, in de plaats daarvan zou ik hem op "ambient" zetten aangezien dat het type sound is dat je wilt bereiken.
#specifieer hoe lang thunder moet duren tenzij je dat aan de game zelf wil overlaten.
#Voor de "fire eruption" zou ik een fire entity summonen in plaats van een fill, fill is nogal heavy als dat voor alle spelers op de server is en heeft ook effect op andere entities zoal animals of items op de grond.
