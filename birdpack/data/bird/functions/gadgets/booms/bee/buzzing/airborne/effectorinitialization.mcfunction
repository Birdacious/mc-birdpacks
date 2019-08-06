# as @e[type=snowball, nbt={Item:{tag:{boom:"buzzing"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["buzzingeffector"]}
tag @s add initialized