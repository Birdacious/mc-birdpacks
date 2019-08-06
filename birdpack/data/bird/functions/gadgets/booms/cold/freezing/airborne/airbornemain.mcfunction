# as server

tag @e[tag=freezingeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"freezing"}}}] at @s run function bird:gadgets/booms/cold/freezing/airborne/snowballairborne

