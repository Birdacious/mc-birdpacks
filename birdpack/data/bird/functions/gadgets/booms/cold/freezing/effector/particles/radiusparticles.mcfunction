# as @e[tag=freezingeffector, tag=detectground] at @s --> as @e[type=armor_stand, tag=freezingradius, distance=..0.01, limit=1]


# takes the effector's boom timer to use for rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=freezingeffector, distance=..0.01, sort=nearest, limit=1] boomtimer

#execute if entity @s[tag=r0] run scoreboard players add @s boomtimer 0
execute if entity @s[tag=r1] run scoreboard players add @s boomtimer 120
execute if entity @s[tag=r2] run scoreboard players add @s boomtimer 240

execute store result entity @s Rotation[0] float 2 run scoreboard players get @s boomtimer


# actual particles
particle minecraft:end_rod ^ ^ ^6 0 0 0 0 1 force