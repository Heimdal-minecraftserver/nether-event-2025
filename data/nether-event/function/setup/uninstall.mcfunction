# Cleanup Nether Event datapack on uninstall

## Remove all objectives related to the Nether Event
scoreboard objectives remove nether_event
scoreboard objectives remove nether_event_spawn
scoreboard objectives remove nether_event_time_tracker

data remove storage minecraft:macro mob_spawn
data remove storage minecraft:macro lightning
data remove storage minecraft:macro time_tracker

datapack disable nether-event