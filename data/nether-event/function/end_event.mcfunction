title @a title {"text":"The Light Returns...","color":"gold"}
title @a subtitle {"text":"But the world is changed.","color":"dark_red"}
playsound minecraft:music.nether.basalt_deltas master @a ~ ~ ~ 1 1

# Calm lingering fog
execute as @a at @s run particle minecraft:ash ~ ~1 ~ 2 1 2 0.02 50

## Set time to sunrise
time add 4800
weather clear

gamerule allowEnteringNetherUsingPortals true
gamerule playersSleepingPercentage 33
gamerule doInsomnia true
gamerule doDaylightCycle true
gamerule doWeatherCycle true

function nether-event:eclipse/helpers/clear_fire
function nether-event:setup/clear_loops