# as @e[type=area_effect_cloud, tag=bumblingeffector, tag=detectground] at @s --> as @e[distance=..0.25, type=#living_entity, sort=nearest, limit=1]


# sting particles
execute anchored eyes run particle minecraft:crit ^ ^ ^ 0.4 0 0.4 0.3 1 force

# sting damage (a better way than using resistance/absorption?)
#     uses potion of harming so it's different for living vs undead
effect give @s minecraft:absorption 1 1 true
effect give @s[type=!#minecraft:undead] minecraft:instant_damage 1 1 true
effect give @s[type=#minecraft:undead] minecraft:instant_health 1 1 true