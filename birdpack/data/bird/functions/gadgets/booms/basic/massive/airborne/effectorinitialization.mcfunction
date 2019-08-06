# as @e[nbt={Item:{tag:{boom:"massive"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["massiveeffector"]}
tag @s add initialized