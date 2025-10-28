scoreboard players set global fogProgress 1
title @a title {"text":"The air feels heavy...","color":"gray"}
playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0.8

# Light fog pulse (particles)
function nether-event:fog_phase1_loop

## TODO:
#specifieer @a in het "title" en "playsound" commando met de tag gezet door "start_event.mcfunction" om onnodige uitvoering voor niet-deelnemers te vermijden.
#als deze functie een global timer start, dan kunnen de andere fases automatisch starten zonder dat er een speler nodig is om ze te triggeren.