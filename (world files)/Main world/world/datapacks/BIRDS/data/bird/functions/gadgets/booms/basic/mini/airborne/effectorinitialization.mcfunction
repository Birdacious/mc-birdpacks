# as @e[nbt={Item:{tag:{boom:"mini"}}}] at @s

execute if entity @s[tag=!initialized] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000, Tags:["minieffector"]}
tag @s add initialized