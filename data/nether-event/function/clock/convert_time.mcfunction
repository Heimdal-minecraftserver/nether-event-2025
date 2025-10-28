# Convert Time from Ticks to Minutes
## Convert ticks to seconds
scoreboard players operation .second nether_event_clock = .tick nether_event_clock
scoreboard players operation .second nether_event_clock /= #tick nether_event_clock

## Increment minutes every 60 seconds
scoreboard players operation .minute nether_event_clock = .second nether_event_clock
scoreboard players operation .minute nether_event_clock /= #second nether_event_clock

schedule function nether-event:clock/convert_time 60s