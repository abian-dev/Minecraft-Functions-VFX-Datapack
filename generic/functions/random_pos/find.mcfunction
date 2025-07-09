## Finds Random Spawn Position
# finding conditions
execute unless block ~ ~ ~ #packname:passable run scoreboard players set @s generic.raycast.step -1
execute if score @s generic.raycast.step matches ..0 run function packname:generic/functions/random_pos/found with storage genfunc randomPos

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^0.5 run function packname:generic/functions/random_pos/find