## Runs Domain Expansion
scoreboard players operation %vfxDomain.speed generic.z = %vfxDomain.speed generic.constant
execute if entity @s[tag=!vfxDomainFullSphere] run function packname:generic/vfx/domain/draw_sphere with storage minecraft:vfx domain
execute if entity @s[tag=vfxDomainFullSphere] run function packname:generic/vfx/domain/end