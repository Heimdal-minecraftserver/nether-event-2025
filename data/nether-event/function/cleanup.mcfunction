# title @a title {"text":"The Light Returns...","color":"gold"}
# title @a subtitle {"text":"But the world is changed.","color":"dark_red"}
# playsound minecraft:music.nether.basalt_deltas master @a ~ ~ ~ 1 1
# fog @a clear
# time set day
# gamerule doDaylightCycle true
# weather clear
# scoreboard players set global eclipseStage 2

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

