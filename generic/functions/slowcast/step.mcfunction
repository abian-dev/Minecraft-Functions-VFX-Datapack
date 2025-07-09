# example call: function packname:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
## Slowcast Step Function
# vfx
$$(vfx)

# collision check
execute positioned ^ ^ ^0.5 run function packname:generic/functions/slowcast/check_block
$execute if score @s generic.raycast.step matches -1 run return run function packname:generic/functions/slowcast/hit_block {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)"}
$execute if entity @e[distance=..2,type=!#packname:non_entity,tag=!$(slowcaster)] run return run function packname:generic/functions/slowcast/hit_entity {"slowcaster":"$(slowcaster)","hitEntity":"$(hitEntity)"}

# recursive call
scoreboard players remove @s generic.raycast.step 1
execute if score @s generic.raycast.step matches 0 run tp @s ~ ~ ~
$execute if score @s generic.raycast.step matches 1.. positioned ^ ^ ^0.5 run function packname:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}