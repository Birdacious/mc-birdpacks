# as @e[tag=timestopeffector, tag=detectground] at @s

# when swarm is not chasing, summons radius-particle-emitters if there is not already

# flat on y axis
execute unless entity @e[type=minecraft:armor_stand, tag=y0, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, y0, horizontal], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=y1, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, y1, horizontal], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=y2, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, y2, horizontal], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=y3, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, y3, horizontal], Marker:1b, Invisible:1b}

# flat on z axis
execute unless entity @e[type=minecraft:armor_stand, tag=z0, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, z0, vertical], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=z1, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, z1, vertical], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=z2, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, z2, vertical], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=z3, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, z3, vertical], Marker:1b, Invisible:1b}

# flat on x axis
execute unless entity @e[type=minecraft:armor_stand, tag=x0, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, x0, vertical, x], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=x1, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, x1, vertical, x], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=x2, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, x2, vertical, x], Marker:1b, Invisible:1b}
execute unless entity @e[type=minecraft:armor_stand, tag=x3, distance=..0.01] run summon minecraft:armor_stand ~ ~ ~ {Tags:[timestopradius, x3, vertical, x], Marker:1b, Invisible:1b}



# P.S. change the "limit" to the number of armor stands you're summoning and booms will never conflict
execute as @e[type=minecraft:armor_stand, tag=timestopradius, distance=..0.01, sort=nearest, limit=12] at @s run function bird:gadgets/booms/time/timestop/effector/particles/radiusparticles

# termination
execute if score @s boomtimer matches 350 run kill @e[type=minecraft:armor_stand, tag=timestopradius, distance=..0.01, sort=nearest, limit=12]