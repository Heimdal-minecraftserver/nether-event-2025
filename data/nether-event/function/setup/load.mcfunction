# Pumpkin Hunt datapack load script
## Announce successful load to creative mode players
tellraw @a[gamemode=creative] {"text":"Nether event datapack loaded successfully!","color":"gold", "italic": true}

## Create main scoreboard for tracking event phases
scoreboard objectives add nether_event dummy "Nether Event Status"
scoreboard players add .fogPhase nether_event 0
scoreboard players add .eclipsePhase nether_event 0

scoreboard objectives add nether_event_spawn dummy "Nether Event RNG"
scoreboard players add .amountLightning nether_event_spawn 0
scoreboard players add .amountMobs nether_event_spawn 0
scoreboard players add .typeMob nether_event_spawn 0

## Create a clock scoreboard to manage timed events
scoreboard objectives add nether_event_clock dummy "Nether Event Clock"
scoreboard players add .tick nether_event_clock 0
scoreboard players add #tick nether_event_clock 20
scoreboard players add .second nether_event_clock 0
scoreboard players add #second nether_event_clock 60
scoreboard players add .minute nether_event_clock 0

## Convert time to minutes on load
function nether-event:clock/convert_time

## Disable Nether portal travel during the event
gamerule allowEnteringNetherUsingPortals false
gamerule playersSleepingPercentage 100
gamerule doInsomnia false