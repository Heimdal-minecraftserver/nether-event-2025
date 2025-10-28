# Cleanup Nether Event datapack on uninstall

## Remove all objectives related to the Nether Event
scoreboard objectives remove nether_event
scoreboard objectives remove nether_event_spawn
scoreboard objectives remove nether_event_clock
schedule clear nether-event:clock/convert_time

data remove storage minecraft:macro mob_spawn
data remove storage minecraft:macro lightning