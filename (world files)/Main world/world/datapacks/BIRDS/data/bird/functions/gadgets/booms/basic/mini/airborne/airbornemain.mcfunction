# as server

tag @e[type=minecraft:area_effect_cloud, tag=minieffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"mini"}}}] at @s run function bird:gadgets/booms/basic/mini/airborne/snowballairborne

