# as server

tag @e[type=minecraft:area_effect_cloud, tag=megaeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"mega"}}}] at @s run function bird:gadgets/booms/basic/mega/airborne/snowballairborne

