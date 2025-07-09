## Setup
# message
tellraw @a ["",{"text":"Setup:","color":"red"}," ",{"text":"Generic library [","color":"gray"},{"text":"✔","color":"green"},{"text":"]","color":"gray"}]

# add scoreboards
scoreboard objectives add generic.constant dummy
scoreboard objectives add generic.math dummy

scoreboard objectives add generic.x dummy
scoreboard objectives add generic.y dummy
scoreboard objectives add generic.z dummy

scoreboard objectives add generic.dx dummy
scoreboard objectives add generic.dy dummy
scoreboard objectives add generic.dz dummy

scoreboard objectives add generic.frame.index dummy
scoreboard objectives add generic.frame.rate dummy

scoreboard objectives add generic.raycast.dist dummy
scoreboard objectives add generic.raycast.step dummy