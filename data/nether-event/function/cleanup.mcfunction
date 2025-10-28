title @a title {"text":"The Light Returns...","color":"gold"}
title @a subtitle {"text":"But the world is changed.","color":"dark_red"}
playsound minecraft:music.nether.basalt_deltas master @a ~ ~ ~ 1 1
weather clear
time set day
gamerule doDaylightCycle true

# Calm lingering fog
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 2 1 2 0.02 50

scoreboard objectives remove fogProgress
scoreboard objectives remove eclipseStage
scoreboard objectives remove randLightning
scoreboard objectives remove randSpawn

## TODO:
# hier wordt zowel het einde van het event afgehandeld als de cleanup. best om deze in 2 functies te splitsen. Deze functie kan de uninstall wel triggeren via een "function" command.
# execute "as @a" is enkel relevant als de speler effectief iets moet uitvoeren. Een partical gebeurd in de wereld, niet in de UI, dus is "as" overbodig.