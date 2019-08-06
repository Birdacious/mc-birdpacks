# as @e[type=snowball, nbt={Item:{tag:{boom:"bumbling"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["bumblingeffector"]}
tag @s add initialized