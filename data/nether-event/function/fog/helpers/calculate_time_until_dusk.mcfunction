execute store result score .currentTime nether_event_time_tracker run time query daytime

#(13000 - t + 24000) % 24000
scoreboard players operation .timeToAdd nether_event_time_tracker = #targetTime nether_event_time_tracker
scoreboard players operation .timeToAdd nether_event_time_tracker -= .currentTime nether_event_time_tracker
scoreboard players operation .timeToAdd nether_event_time_tracker += #cycle nether_event_time_tracker
scoreboard players operation .timeToAdd nether_event_time_tracker %= #cycle nether_event_time_tracker

execute store result storage minecraft:macro time_tracker.time_to_add int 1 run scoreboard players get .timeToAdd nether_event_time_tracker

#Add the calculated time to current time
function nether-event:fog/helpers/set_time_to_dusk with storage minecraft:macro time_tracker
