#tick --> as server --> as @a[tag=laserSight1] at @s

#Summons the AEC that will be used in curvecasting, so you can start giving it information
#   summoned exactly at the player for easy access, but will be moved 1.52 blocks up (height where fired arrows start) later
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags:["laser"]}

#Calculates the motion of an arrow given the player's current rotation if the player were to release a bow drawn fully
#   Stores the result into an AEC at the player's exact location
function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_full_draw

#AEC does curvetracing with the info we put in its Motion[0,1,2]
execute as @e[type=minecraft:area_effect_cloud, tag=laser] at @s run function bird:gadgets/item_mods/bow/laser_sight/curvecasting/main

#Termination(s)
function bird:gadgets/item_mods/bow/laser_sight/termination/main


# TODO: make termination/switched_slot, termination/dropped_bow, misc detection for sneak_time score, misc detection for drop