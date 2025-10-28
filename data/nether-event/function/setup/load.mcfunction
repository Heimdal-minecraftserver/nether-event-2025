# Pumpkin Hunt datapack load script
tellraw @a[gamemode=creative] {"text":"Nether event datapack loaded successfully!","color":"gold", "italic": true}

scoreboard objectives add fogProgress dummy "Fog Progress"
scoreboard objectives add eclipseStage dummy "Eclipse Stage"
scoreboard objectives add randLightning dummy "Random Lightning"
scoreboard objectives add randSpawn dummy "Random Mob Spawn"

## Restart any active fog loops on server restart
# If any fog phase is active, restart the fog loop
execute if score $phase fogProgress matches 1 run schedule function nether-event:fog/phase1_loop 10s replace
execute if score $phase fogProgress matches 2 run schedule function nether-event:fog/phase2_loop 10s replace
execute if score $phase fogProgress matches 3 run schedule function nether-event:fog/phase3_loop 10s replace

gamerule allowEnteringNetherUsingPortals false

## TODO:
#Scoreboards met maar 1 speler zijn kinda useless zeker als al u scoreboards maar 1 speler hebben. best om ze in 1 scoreboard te stoppen, met verschillende spelers die dan het onderscheid maken.
#"$phase" wordt alleen in deze file vermeld, de functies doen dus niets.
#"$" worden normaal gebruikt om macro's aan te duiden, wat hier niet het geval is. best een ander teken gebruiken om aan te duiden dat het niet om een echte speler gaat.