# Nether event 2025

The datapack is meant to be easy in use. It has 6 commands that need to be executed in order.

## Functions

1. start_event: Shows a title and disables nether portals
2. fog_phase1: Shows a title and starts the first fog loop (5s darkness every 10 minutes)
3. fog_phase2: Shows a title and starts the second fog loop (6s darkness every 5 minutes). Also clears the first fog loop
4. fog_phase3: Shows a title, set time to dusk, disable daylight cycle, thunder and starts the third fog loop (8s darkness every 3 minutes). Also clears the second fog loop
5. eclipse_phase1: Shows a title, sets time to midnight and starts the eclipse loop. Also clears the third fog loop. The eclipse loop runs every 30 seconds and tries to spawn mobs around each player (4-7 mobs). There should also be a random chance for lightning to trigger.
6. eclipse_phase2: Shows a title, allows the usage of nether portals and clears the eclipse loop. Also spawns fire around the players. It then runs a cleanup function after a minute.
7. cleanup (automatically triggered): clears the weather, set's the time to day and resume the daylight cycle. Remove scoreboards

> Note: In the load function, depending on the stage of the fog phases, it automatically starts the corresponding fog loop after a reboot