# as @e[type=snowball, nbt={Item:{tag:{boom:"bombinating"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["bombinatingeffector"]}
tag @s add initialized