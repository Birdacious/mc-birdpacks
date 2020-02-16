# as server

tag @e[type=minecraft:area_effect_cloud, tag=mediumeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"medium"}}}] at @s run function bird:gadgets/booms/basic/medium/airborne/snowballairborne

