# as @e[tag=freezingeffector, tag=detectground] at @s

execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[freezingradius, r0], Marker:1b, Invisible:1b}
execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[freezingradius, r1], Marker:1b, Invisible:1b}
execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[freezingradius, r2], Marker:1b, Invisible:1b}


# P.S. change the "limit" to the number of armor stands you're summoning and booms will never conflict
execute as @e[type=armor_stand, tag=freezingradius, distance=..0.01, sort=nearest, limit=3] at @s run function bird:gadgets/booms/cold/freezing/effector/particles/radiusparticles

# termination
execute if score @s boomtimer matches 800 run kill @e[type=armor_stand, tag=freezingradius, distance=..0.01, sort=nearest, limit=3]