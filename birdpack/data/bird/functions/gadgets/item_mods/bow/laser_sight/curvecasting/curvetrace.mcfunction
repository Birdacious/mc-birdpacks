#as server --> as @a[tag=laserSight1] at @s --> as @e[type=minecraft:armor_stand, tag=laser, distance=..0.00001, limit=1] at @s


#Get Pos at start of tick (scaled up)
#   Won't work if player is at very far coordinates (> 214748), because the x10000 scale will cause the score to go over MAX_INT. But that shouldn't be a problem.
#   Since Y-coords will usually be within 0-256, I could give it a much bigger scale for more preciesion, but this is simpler so w/e.
execute store result score @s posX0 run data get entity @s Pos[0] 10000
execute store result score @s posY0 run data get entity @s Pos[1] 10000
execute store result score @s posZ0 run data get entity @s Pos[2] 10000

#Get Motion (scaled up)
execute store result score @s motionX0 run data get entity @s Motion[0] 10000
execute store result score @s motionY0 run data get entity @s Motion[1] 10000
execute store result score @s motionZ0 run data get entity @s Motion[2] 10000

#Apply the motion
#   x
scoreboard players operation @s bird.temp = @s posX0
scoreboard players operation @s bird.temp += @s motionX0
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s bird.temp
#   y
scoreboard players operation @s bird.temp = @s posY0
scoreboard players operation @s bird.temp += @s motionY0
execute unless entity @s[tag=elevate] run scoreboard players operation @s bird.temp += 15200 k
tag @s add elevate
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s bird.temp
#   z
scoreboard players operation @s bird.temp = @s posZ0
scoreboard players operation @s bird.temp += @s motionZ0
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s bird.temp

#Apply drag and gravity to motion
#   drag is 1% decrease (A.K.A. multiply by 0.99, scaled up by 100 is 99)
#   gravity is 0.05 blocks (A.K.A subtract 0.05, scaled up by 10000 before and 100 here is 50000)
#   for arrows, drag is applied before gravity!
#   x
scoreboard players operation @s motionX0 *= 99 k
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s motionX0
#   y
scoreboard players operation @s motionY0 *= 99 k
scoreboard players operation @s motionY0 -= 50000 k
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get @s motionY0
#   z
scoreboard players operation @s motionZ0 *= 99 k
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s motionZ0

execute at @s run particle minecraft:dust 1 0 0 0.3 ~ ~ ~ 0 0 0 0 1 force
#execute at @s run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force

#Recurse the function if the AEC has not encountered an entity or solid block
#   It should also stop if it has recursed too many times
#   You do need to respecify "at @s" or it will detect as if the slime was where it spawns at the beginning of the tick (wack)
scoreboard players add @s recurCount 1
execute at @s if block ~ ~ ~ minecraft:air unless entity @e[type=#minecraft:living_entity, type=!minecraft:player, distance=..1] unless score @s recurCount matches 50.. run function bird:gadgets/item_mods/bow/laser_sight/curvecasting/curvetrace