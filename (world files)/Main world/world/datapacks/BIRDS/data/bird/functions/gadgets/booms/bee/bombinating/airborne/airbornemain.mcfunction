# as server

tag @e[type=minecraft:area_effect_cloud, tag=bombinatingeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"bombinating"}}}] at @s run function bird:gadgets/booms/bee/bombinating/airborne/snowballairborne

