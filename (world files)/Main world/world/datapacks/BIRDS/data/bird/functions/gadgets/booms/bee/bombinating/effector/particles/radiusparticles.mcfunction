# as @e[tag=bombinatingeffector, tag=detectground] at @s --> as @e[type=armor_stand, tag=bombinatingradius, distance=..0.01, limit=2]


# takes the effector's boom timer to use for rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=bombinatingeffector, distance=..0.01, sort=nearest, limit=1] boomtimer

#execute if entity @s[tag=r0] run scoreboard players add @s boomtimer 0
execute if entity @s[tag=r1] run scoreboard players add @s boomtimer 120
execute if entity @s[tag=r2] run scoreboard players add @s boomtimer 240

execute store result entity @s Rotation[0] float 2 run scoreboard players get @s boomtimer


# actual particles
particle minecraft:mycelium ^ ^ ^6 0.1 0.1 0.1 0 3 force


# termination 2
execute unless entity @e[type=minecraft:area_effect_cloud, tag=bombinatingeffector, distance=..0.01, sort=nearest, limit=3] run kill @s