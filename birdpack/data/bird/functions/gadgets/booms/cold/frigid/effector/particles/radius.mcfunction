# as @e[tag=frigideffector, tag=detectground] at @s

execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[frigidradius, r0], Marker:1b, Invisible:1b}
execute if score @s boomtimer matches 1 run summon minecraft:armor_stand ~ ~ ~ {Tags:[frigidradius, r1], Marker:1b, Invisible:1b}

# P.S. change the "limit" to the number of armor stands you're summoning and booms will never conflict
execute as @e[type=armor_stand, tag=frigidradius, distance=..0.01, sort=nearest, limit=2] at @s run function bird:gadgets/booms/cold/frigid/effector/particles/radiusparticles

execute if score @s boomtimer matches 600 run kill @e[type=armor_stand, tag=frigidradius, distance=..0.01, sort=nearest, limit=2]