## Draws Circle Slash with Thickness
$particle $(particle) ^ ^ ^$(thicknessOffsetPosY) 0 0 0 0 1 force
$particle $(particle) ^ ^ ^$(thicknessOffsetNegY) 0 0 0 0 1 force
$particle $(particle) ^$(thicknessOffset) ^ ^$(y) 0 0 0 0 1 force
$particle $(particle) ^-$(thicknessOffset) ^ ^$(y) 0 0 0 0 1 force

# offset++ until it reaches computed thickness
scoreboard players operation %vfxSlashCircle.thicknessOffset generic.dz += %vfxSlashCircle.dist generic.constant
scoreboard players operation %vfxSlashCircle.thicknessOffset+Y generic.dz = %vfxSlashCircle.y generic.dz
scoreboard players operation %vfxSlashCircle.thicknessOffset+Y generic.dz += %vfxSlashCircle.thicknessOffset generic.dz
scoreboard players operation %vfxSlashCircle.thicknessOffset-Y generic.dz = %vfxSlashCircle.y generic.dz
scoreboard players operation %vfxSlashCircle.thicknessOffset-Y generic.dz -= %vfxSlashCircle.thicknessOffset generic.dz

execute store result storage minecraft:vfx slashCircle.thicknessOffset double 0.01 run scoreboard players get %vfxSlashCircle.thicknessOffset generic.dz
execute store result storage minecraft:vfx slashCircle.thicknessOffsetPosY double 0.01 run scoreboard players get %vfxSlashCircle.thicknessOffset+Y generic.dz
execute store result storage minecraft:vfx slashCircle.thicknessOffsetNegY double 0.01 run scoreboard players get %vfxSlashCircle.thicknessOffset-Y generic.dz

execute unless score %vfxSlashCircle.thicknessOffset generic.dz >= %vfxSlashCircle.thicknessAtStep generic.dz positioned as @s run function packname:generic/vfx/slash_circle/draw_thickness with storage minecraft:vfx slashCircle