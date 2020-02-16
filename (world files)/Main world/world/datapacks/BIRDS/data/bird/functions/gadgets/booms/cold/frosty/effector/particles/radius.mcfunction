# as @e[tag=frostyeffector, tag=detectground] at @s

execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[frostyradius, r0], Marker:1b, Invisible:1b}

# P.S. change the "limit" to the number of armor stands you're summoning and booms will never conflict
execute as @e[type=armor_stand, tag=frostyradius, distance=..0.01, sort=nearest, limit=1] at @s run function bird:gadgets/booms/cold/frosty/effector/particles/radiusparticles

# termination
execute if score @s boomtimer matches 400 run kill @e[type=armor_stand, tag=frostyradius, distance=..0.01, sort=nearest, limit=1]
