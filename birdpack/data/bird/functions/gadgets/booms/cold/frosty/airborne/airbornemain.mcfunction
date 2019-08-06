# as server

tag @e[tag=frostyeffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"frosty"}}}] at @s run function bird:gadgets/booms/cold/frosty/airborne/snowballairborne

