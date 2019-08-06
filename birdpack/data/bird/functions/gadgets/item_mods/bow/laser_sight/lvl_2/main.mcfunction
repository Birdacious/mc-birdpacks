#tick --> as server --> as @a[tag=laserSight2] at @s

#Summons the AEC that will be used in curvecasting, so you can start giving it information
#   summoned exactly at the player for easy access, but will be moved 1.52 blocks up (height where fired arrows start) later
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags:["laser"]}

#Calculates the motion of an arrow given the player's current rotation if the player were to release their bow
#   Stores the result into an AEC at the player's exact location
#   laserTimer is slightly delayed because right-clicking the carrotstick adds a bit of delay
scoreboard players add @s laserTimer 1
execute if score @s laserTimer matches 8 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_03_ticks
execute if score @s laserTimer matches 9 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_04_ticks
execute if score @s laserTimer matches 10 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_05_ticks
execute if score @s laserTimer matches 11 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_06_ticks
execute if score @s laserTimer matches 12 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_07_ticks
execute if score @s laserTimer matches 13 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_08_ticks
execute if score @s laserTimer matches 14 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_09_ticks
execute if score @s laserTimer matches 15 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_10_ticks
execute if score @s laserTimer matches 16 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_11_ticks
execute if score @s laserTimer matches 17 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_12_ticks
execute if score @s laserTimer matches 18 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_13_ticks
execute if score @s laserTimer matches 19 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_14_ticks
execute if score @s laserTimer matches 20 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_15_ticks
execute if score @s laserTimer matches 21 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_16_ticks
execute if score @s laserTimer matches 22 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_17_ticks
execute if score @s laserTimer matches 23 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_18_ticks
execute if score @s laserTimer matches 24 run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_19_ticks
execute if score @s laserTimer matches 25.. run function bird:gadgets/item_mods/bow/laser_sight/maths/calc_hypotheticarrow_motion/at_full_draw

#AEC does curvetracing with the info we put in its Motion[0,1,2]
execute as @e[type=minecraft:area_effect_cloud, tag=laser] at @s run function bird:gadgets/item_mods/bow/laser_sight/curvecasting/main

#Termination(s)
function bird:gadgets/item_mods/bow/laser_sight/termination/main


# TODO: make termination/switched_slot, termination/dropped_bow, misc detection for sneak_time score, misc detection for drop