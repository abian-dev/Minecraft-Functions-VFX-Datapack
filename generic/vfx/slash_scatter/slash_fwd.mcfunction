## Slash Forward Step Function
# vfx
$$(vfx)

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute unless block ~ ~ ~ #packname:passable run scoreboard players set @s generic.raycast.step 0
$execute if score @s generic.raycast.step matches 0.. positioned ^ ^ ^$(inaccuracy) run function packname:generic/vfx/slash_scatter/slash_fwd {"inaccuracy":"$(inaccuracy)","vfx":"$(vfx)"}