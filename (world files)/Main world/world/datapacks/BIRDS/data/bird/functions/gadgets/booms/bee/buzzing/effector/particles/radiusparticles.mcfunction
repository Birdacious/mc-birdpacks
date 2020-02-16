# as @e[tag=buzzingeffector, tag=detectground] at @s --> as @e[type=armor_stand, tag=buzzingradius, distance=..0.01, limit=1]


# takes the effector's boom timer to use for rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=buzzingeffector, distance=..0.01, sort=nearest, limit=1] boomtimer

#execute if entity @s[tag=r0] run scoreboard players add @s boomtimer 0

execute store result entity @s Rotation[0] float 10 run scoreboard players get @s boomtimer


# actual particles
particle minecraft:mycelium ^ ^ ^4 0.1 0.1 0.1 0 5 force


# termination 2
execute unless entity @e[type=minecraft:area_effect_cloud, tag=buzzingeffector, distance=..0.01, sort=nearest, limit=1] run kill @s