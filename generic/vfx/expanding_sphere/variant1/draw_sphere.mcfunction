## Draws a Sphere
function packname:generic/vfx/expanding_sphere/variant1/draw_circle with storage minecraft:vfx expandingSphere
$tp @s ~ ~ ~ ~ ~$(density)
execute unless entity @s[x_rotation=90] at @s run function packname:generic/vfx/expanding_sphere/variant1/draw_sphere with storage minecraft:vfx expandingSphere