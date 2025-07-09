# note: add "function none" in the macro parameters if no action is needed
# example call: function packname:generic/functions/raycast_mode/ignore_entities/start {"length":"100","hitEnd":"function","hitBlock":"function","vfx":"function"}
## Raycast: Ignore Entities Start Function
# run raycast
$scoreboard players set @s generic.raycast.step $(length)
tag @s add genericRaycaster
$function packname:generic/functions/raycast_mode/ignore_entities/step {"hitEnd":"$(hitEnd)","hitBlock":"$(hitBlock)","vfx":"$(vfx)"}

# reset
scoreboard players reset @s generic.raycast.step
tag @s remove genericRaycaster