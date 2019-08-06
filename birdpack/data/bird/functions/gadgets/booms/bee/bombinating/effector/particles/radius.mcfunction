# as @e[tag=bombinatingeffector, tag=detectground] at @s

# when swarm is not chasing, summons radius-particle-emitters if there is not already
execute unless entity @e[type=minecraft:armor_stand, tag=r0, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[bombinatingradius, r0], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=r1, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[bombinatingradius, r1], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=r2, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[bombinatingradius, r2], Marker:1b, Invisible:1b}


# P.S. change the "limit" to the number of armor stands you're summoning and booms will never conflict
execute as @e[type=minecraft:armor_stand, tag=bombinatingradius, distance=..0.01, sort=nearest, limit=3] at @s run function bird:gadgets/booms/bee/bombinating/effector/particles/radiusparticles

# termination 1
execute if score @s boomtimer matches 600 run kill @e[type=minecraft:armor_stand, tag=bombinatingradius, distance=..0.01, sort=nearest, limit=3]