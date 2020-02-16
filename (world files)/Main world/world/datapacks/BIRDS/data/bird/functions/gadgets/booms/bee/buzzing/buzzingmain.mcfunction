# as server


# When airborne
function bird:gadgets/booms/bee/buzzing/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=buzzingeffector, tag=detectground] at @s run function bird:gadgets/booms/bee/buzzing/effector/effectormain