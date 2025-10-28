# Nether Event Start Function
## Announce the beginning of the Nether Event
title @s title {"text":"Something feels wrong...","color":"gray"}
title @s subtitle {"text":"The Nether is calling...","color":"red"}

## Play an ambient sound to set the mood
playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 0.8

## Tag the player as a participant in the Nether Event
execute unless entity @s[tag=nether_event_2025] run tag @s add nether_event_participant

## Start the first fog phase
execute if score .fogPhase nether_event matches 0 run schedule function nether-event:fog/phase1 60s
