# as server

tag @e[type=minecraft:area_effect_cloud, tag=massiveeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"massive"}}}] at @s run function bird:gadgets/booms/basic/massive/airborne/snowballairborne

