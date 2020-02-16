# as @e[tag=timestopeffector, tag=detectground] at @s --> as @e[type=minecraft:armor_stand, tag=timestopradius, distance=..0.01, sort=nearest, limit=8]

# TAKE the effector's boom timer to use to increment rotation
execute store result score @s boomtimer run scoreboard players get @e[type=minecraft:area_effect_cloud, tag=timestopeffector, distance=..0.01, sort=nearest, limit=1] boomtimer


# OFFSET
# y gang
#execute if entity @s[tag=y0] run scoreboard players add @s boomtimer 0
execute if entity @s[tag=y1] run scoreboard players add @s boomtimer 90
execute if entity @s[tag=y2] run scoreboard players add @s boomtimer 180
execute if entity @s[tag=y3] run scoreboard players add @s boomtimer 270

# z gang
execute if entity @s[tag=z0] run scoreboard players add @s boomtimer 120
execute if entity @s[tag=z1] run scoreboard players add @s boomtimer 210
execute if entity @s[tag=z2] run scoreboard players add @s boomtimer 300
execute if entity @s[tag=z3] run scoreboard players add @s boomtimer 390

# x gang
execute if entity @s[tag=x0] run scoreboard players add @s boomtimer 240
execute if entity @s[tag=x1] run scoreboard players add @s boomtimer 330
execute if entity @s[tag=x2] run scoreboard players add @s boomtimer 420
execute if entity @s[tag=x3] run scoreboard players add @s boomtimer 510


# STORE into rotation
execute if entity @s[tag=horizontal] store result entity @s Rotation[0] float 1 run scoreboard players get @s boomtimer
execute if entity @s[tag=vertical] store result entity @s Rotation[1] float 1 run scoreboard players get @s boomtimer
execute if entity @s[tag=x] store result entity @s Rotation[0] float 1 run scoreboard players get 90 k


# PARTICLES
particle minecraft:portal ^ ^ ^5 0.1 0.1 0.1 0 5 force



# termination 2 (unecessary ultra-failsafe)
#execute unless entity @e[type=minecraft:area_effect_cloud, tag=timestopeffector, distance=..0.01, sort=nearest, limit=3] run kill @s