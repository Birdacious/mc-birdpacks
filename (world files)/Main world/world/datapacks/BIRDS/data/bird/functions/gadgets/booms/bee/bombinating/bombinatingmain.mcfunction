# as server


# When airborne
function bird:gadgets/booms/bee/bombinating/airborne/airbornemain

# When effector lands
execute as @e[type=area_effect_cloud, tag=bombinatingeffector, tag=detectground] at @s run function bird:gadgets/booms/bee/bombinating/effector/effectormain