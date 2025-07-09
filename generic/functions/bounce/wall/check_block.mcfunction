## Raycast Check Block Collision Function
execute unless block ~ ~ ~0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~ ~ ~-0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~0.25 ~ ~ #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~-0.25 ~ ~ #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~0.25 ~ ~0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~-0.25 ~ ~0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~0.25 ~ ~-0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1
execute unless block ~-0.25 ~ ~-0.25 #packname:passable run scoreboard players set @s generic.raycast.step -1