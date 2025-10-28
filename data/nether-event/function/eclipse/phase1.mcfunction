# Eclipse Phase 1: The Moon Darkens
## Clear any existing fog loops
schedule clear nether-event:fog/phase3_loop

## Set eclipse phase to 1
scoreboard players set .eclipsePhase nether_event 1
scoreboard players set .fogPhase nether_event 4

## Announce eclipse beginning to participants
title @a[tag=nether_event_2025] title {"text":"The Moon Darkens","color":"dark_purple"}
title @a[tag=nether_event_2025] subtitle {"text":"The Eclipse Begins...","color":"gray"}
playsound minecraft:entity.ender_dragon.growl ambient @a[tag=nether_event_2025] ~ ~ ~ 1 0.5

## Set time to midnight and start thunderstorm
time set midnight

## Store macro variables for lightning spawn offsets
data modify storage minecraft:macro lightning set value {"x": 0, "z": 0}
## Store macro variables for mob spawn offsets and type
data modify storage minecraft:macro mob_spawn set value {"x": 0, "z": 0}

## Start the repeating long night loop
function nether-event:eclipse/loop

## TODO:
#"time command" messes with server time, kan je niet gebruiken op die manier. Als je het persee wilt gebruiken, moet je de current time query runnen om dan te gaan bepalen hoeveel tijd je erbij wilt zetten. Wiki: https://minecraft.wiki/w/Commands/time. Je houd best ook rekening met de moonphases https://minecraft.wiki/w/Daylight_cycle. Als je dit toch wilt gebruiken, dan ga je een heel scoreboard systeem nodig hebben die berekend wat de current time is via een querry, die opslaat, bepaald waar in de moonphase die zich bevind, berekend wat de volgende nighttime is dat je wil bereiken en die time toevoegd aan de current time.
