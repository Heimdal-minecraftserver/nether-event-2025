scoreboard players set global fogProgress 1
title @a[tag=nether_event_2025] title {"text":"The air feels heavy...","color":"gray"}

# Light fog pulse (particles)
function nether-event:fog/phase1_loop

## TODO:
#als deze functie een global timer start, dan kunnen de andere fases automatisch starten zonder dat er een speler nodig is om ze te triggeren.