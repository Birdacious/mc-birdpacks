# as server

tag @e[type=minecraft:area_effect_cloud, tag=bumblingeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"bumbling"}}}] at @s run function bird:gadgets/booms/bee/bumbling/airborne/snowballairborne

