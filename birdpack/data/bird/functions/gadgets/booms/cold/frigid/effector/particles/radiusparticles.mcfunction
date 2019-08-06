# as @e[tag=frigideffector, tag=detectground] at @s --> as @e[type=armor_stand, tag=frigidradius, distance=..0.01, limit=1]


# takes the effector's boom timer to use for rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=frigideffector, distance=..0.01, sort=nearest, limit=1] boomtimer

#execute if entity @s[tag=r0] run scoreboard players add @s boomtimer 0
execute if entity @s[tag=r1] run scoreboard players add @s boomtimer 180

# if above adds 180, then scale below must be odd
# if above adds 90, then scale below must be even
execute store result entity @s Rotation[0] float 3 run scoreboard players get @s boomtimer


# actual particles
particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force