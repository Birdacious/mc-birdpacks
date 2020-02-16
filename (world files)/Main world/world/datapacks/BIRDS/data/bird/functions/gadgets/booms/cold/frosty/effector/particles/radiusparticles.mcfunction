# as @e[tag=frostyeffector, tag=detectground] at @s --> as @e[type=armor_stand, tag=frostyradius, distance=..0.01, limit=1]


# takes the effector's boom timer to use for rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=frostyeffector, distance=..0.01, sort=nearest, limit=1] boomtimer

#execute if entity @s[tag=r0] run scoreboard players add @s boomtimer 0

execute store result entity @s Rotation[0] float 6 run scoreboard players get @s boomtimer


# actual particles
particle minecraft:end_rod ^ ^ ^4 0 0 0 0 1 force