# as @e[type=area_effect_cloud, tag=buzzingeffector, tag=detectground] at @s --> as @e[distance=..4, type=#living_entity, sort=nearest, limit=1] at @s


# chase (this chase tag is just a way for me to delay teleportation to every other tick without using another scoreboard objective)
function bird:gadgets/booms/bee/buzzing/effector/effects/chase
tag @s remove chase

# particles
function bird:gadgets/booms/bee/buzzing/effector/effects/particles

# sting
#     (why not use schedule? because it's not editable like scoreboards, which causes problems with timeslow/stop. also because doesn't work when run every tick)
scoreboard players add @s stingtimer 1
execute if score @s stingtimer matches 20 run function bird:gadgets/booms/bee/buzzing/effector/effects/sting
execute if score @s stingtimer matches 20 run scoreboard players set @s stingtimer 0