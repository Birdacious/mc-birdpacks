#Calculates the motion of an arrow given the player's current rotation if the player were to release a bow drawn at 14 ticks
#   Stores the result into an AEC at the player's exact location

#Equation for coordinates of a sphere at the origin
#except z IRL is y in Minecraft, because in Minecraft the XZ plane is like the XY plane
#and the radius p is the speed of the arrow in blocks/tick in this case
#   x = (arrow speed) * -1 * sin(θ) * cos(Φ)
#   z = (arrow speed) * cos(θ) * cos(Φ)
#   y = (arrow speed) * -1 * sin(Φ)

#Given player's rotation, get sin(θ), cos(θ), sin(Φ), and cos(Φ)
#   thank goodness for the phi datapack amarite fam
function bird:gadgets/item_mods/bow/laser_sight/maths/get_trig

#Scale the trig numbers down
scoreboard players operation @s sin.theta /= 100000 k
scoreboard players operation @s cos.theta /= 100000 k
scoreboard players operation @s cos.phi /= 100000 k
#(Don't need to scale sin(Φ) down because you don't need to multiply it by another trig thing, just by arrow speed)
#   (see sphere equation)

#Find the X motion of a hypothetical arrow and put in AEC's Motion[0]
scoreboard players operation @s bird.temp = @s sin.theta
scoreboard players operation @s bird.temp *= @s cos.phi
execute store result entity @e[type=minecraft:area_effect_cloud, tag=laser, distance=..0.00001, limit=1] Motion[0] double -0.00000000406576 run scoreboard players get @s bird.temp
#When doing "/execute store," use a scale of *** -<arrow speed> / 461168601 *** to multiply by the arrow speed and scale the numbers down in one step!
#   in this case (maximum bow draw, arrow speed = 3) it's -3/461168601 = 0.00000000650521305

#Find the Z motion of a hypothetical arrow and put in AEC's Motion[2]
scoreboard players operation @s bird.temp = @s cos.theta
scoreboard players operation @s bird.temp *= @s cos.phi
execute store result entity @e[type=minecraft:area_effect_cloud, tag=laser, distance=..0.00001, limit=1] Motion[2] double 0.00000000406576 run scoreboard players get @s bird.temp
#When doing "/execute store," use a scale of *** <arrow speed> / 461168601 *** to multiply by the arrow speed and scale the numbers down in one step!
#   in this case (maximum bow draw, arrow speed = 3) it's 3/461168601 = 0.00000000650521305

#Find the Y motion of a hypothetical arrow and put in AEC's Motion[1]
execute store result entity @e[type=minecraft:area_effect_cloud, tag=laser, distance=..0.00001, limit=1] Motion[1] double -0.000000000873115 run scoreboard players get @s sin.phi
#When doing "/execute store," use a scale of *** -<arrow speed> / 2147483647 *** to multiply by the arrow speed and scale the numbers down in one step!
#   in this case (maximum bow draw, arrow speed = 3) it's -3/2147483647 = -0.00000000139698386

#Scale these puppies back up because they might be needed somewhere else
#Scale the trig numbers down
scoreboard players operation @s sin.theta *= 100000 k
scoreboard players operation @s cos.theta *= 100000 k
scoreboard players operation @s cos.phi *= 100000 k

#Teleport the AEC up 1.52 blocks, where an arrow starts when it is released
#teleport @e[type=minecraft:area_effect_cloud, tag=laser, tag=initialized, distance=..0.00001] ~ ~1.52 ~
#tag @e[type=minecraft:area_effect_cloud, tag=laser, tag=!initialized, distance=..0.00001] add initialized