# as @e[nbt={Item:{tag:{boom:"freezing"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["freezingeffector"]}
tag @s add initialized