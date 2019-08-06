# as server


# When airborne
function bird:gadgets/booms/basic/medium/airborne/airbornemain

# When effector lands
execute as @e[tag=mediumeffector, tag=detectground] at @s run function bird:gadgets/booms/basic/medium/effector/effectormain