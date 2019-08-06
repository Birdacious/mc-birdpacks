#tick --> as server --> as @a[tag=laserSight1] at @s --> as @e[type=minecraft:armor_stand, tag=laser, distance=..0.00001, limit=1] at @s


#Curvecast
execute if block ~ ~ ~ minecraft:air unless entity @e[type=#minecraft:living_entity, type=!minecraft:player, distance=..0.001] unless score @s recurCount matches 10.. run function bird:gadgets/item_mods/bow/laser_sight/curvecasting/curvetrace

#Summon the end of the laser (where arrow will land (ignoring spray))
#execute at @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0.5 0.5 0.5 0 1 force

#Don't need to kill @s because the AEC has a Duration of only 1t anyway