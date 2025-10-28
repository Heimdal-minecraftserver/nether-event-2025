# Phase 3 fog initiation
## Clear any existing fog pulses
schedule clear nether-event:fog/phase2_loop

## Set fog phase to 3
scoreboard players set .fogPhase nether_event 3

## Announce fog phase 3 to participants
title @a[tag=nether_event_2025] title {"text":"The fog consumes all...","color":"dark_red"}
playsound minecraft:entity.warden.ambient ambient @a[tag=nether_event_2025] ~ ~ ~ 1 0.7


# Set time to late night and stop daylight cycle
weather thunder 7d
time set 13000
gamerule doDaylightCycle false

# Start the repeating deep fog loop
function nether-event:fog/phase3_loop

## TODO:
#"time command" messes with server time, kan je niet gebruiken op die manier. Als je het persee wilt gebruiken, moet je de current time query runnen om dan te gaan bepalen hoeveel tijd je erbij wilt zetten. Wiki: https://minecraft.wiki/w/Commands/time. Je houd best ook rekening met de moonphases https://minecraft.wiki/w/Daylight_cycle. Als je dit toch wilt gebruiken, dan ga je een heel scoreboard systeem nodig hebben die berekend wat de current time is via een querry, die opslaat, bepaald waar in de moonphase die zich bevind, berekend wat de volgende nighttime is dat je wil bereiken en die time toevoegd aan de current time.