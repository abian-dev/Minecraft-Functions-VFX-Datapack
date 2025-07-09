# example call: function packname:generic/vfx/expanding_sphere/variant2/play {"inaccuracy":"500","speed":"100","particle":"flame"}
## Plays Expanding Sphere - Variant 2
# initialize
$scoreboard players set %vfxExpandingSphere2.inaccuracy generic.constant $(inaccuracy)
$scoreboard players set %vfxExpandingSphere2.inaccuracy-1 generic.constant $(inaccuracy)
scoreboard players remove %vfxExpandingSphere2.inaccuracy-1 generic.constant 100
$scoreboard players set %vfxExpandingSphere2.speed generic.constant $(speed)

# store
execute store result storage minecraft:vfx expandingSphere2.inaccuracy float 0.01 run scoreboard players get %vfxExpandingSphere2.inaccuracy generic.constant
execute store result storage minecraft:vfx expandingSphere2.inaccuracy1Less float 0.01 run scoreboard players get %vfxExpandingSphere2.inaccuracy-1 generic.constant
execute store result storage minecraft:vfx expandingSphere2.motion float 10000 run scoreboard players get %vfxExpandingSphere2.speed generic.constant
execute store result storage minecraft:vfx expandingSphere2.speed float 0.000000001 run scoreboard players get %vfxExpandingSphere2.speed generic.constant
$data modify storage minecraft:vfx expandingSphere2.particle set value "$(particle)"

# summon
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},Radius:0f,WaitTime:0,Tags:["vfx","vfxExpandingSphere2"],Duration:0}
tp @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere2] ~ ~ ~ 0 -90
execute as @e[type=area_effect_cloud,limit=1,sort=nearest,tag=vfxExpandingSphere2] at @s run function packname:generic/vfx/expanding_sphere/variant2/draw_sphere with storage minecraft:vfx expandingSphere2
function packname:generic/vfx/expanding_sphere/variant2/end