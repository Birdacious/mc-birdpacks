# as server

tag @e[type=minecraft:area_effect_cloud, tag=timestopeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"timestop"}}}] at @s run function bird:gadgets/booms/time/timestop/airborne/snowballairborne

