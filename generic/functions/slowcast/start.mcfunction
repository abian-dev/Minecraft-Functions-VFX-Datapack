# note: call this function on every tick; executed at the area effect cloud with the $(slowcaster) tag
# note: the "slowcaster" macro in the start function must match the one in the summon function
# note: add "function none" in the macro parameters if no action is needed
# example call: function packname:generic/functions/slowcast/start {"speed":"10","slowcaster":"genericSlowcaster","hitEnd":"function","hitBlock":"function","hitEntity":"function","vfx":"function"}
## Slowcast Start Function
# limit travel distance
scoreboard players remove @s generic.raycast.dist 1
$execute if score @s generic.raycast.dist matches -1..1 run return run function packname:generic/functions/slowcast/hit_end {"slowcaster":"$(slowcaster)","hitEnd":"$(hitEnd)"}

# run slowcast
$scoreboard players set @s generic.raycast.step $(speed)
$function packname:generic/functions/slowcast/step {"slowcaster":"$(slowcaster)","hitBlock":"$(hitBlock)","hitEntity":"$(hitEntity)","vfx":"$(vfx)"}
scoreboard players reset @s generic.raycast.step