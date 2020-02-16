# as server

tag @e[tag=frigideffector] add detectground
execute as @e[type=minecraft:snowball, nbt={Item:{tag:{boom:"frigid"}}}] at @s run function bird:gadgets/booms/cold/frigid/airborne/snowballairborne

