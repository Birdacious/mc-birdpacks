# as server

tag @e[type=minecraft:area_effect_cloud, tag=buzzingeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"buzzing"}}}] at @s run function bird:gadgets/booms/bee/buzzing/airborne/snowballairborne

