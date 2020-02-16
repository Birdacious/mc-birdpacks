# as server


# When airborne
function bird:gadgets/booms/basic/massive/airborne/airbornemain

# When effector lands
execute as @e[tag=massiveeffector, tag=detectground] at @s run function bird:gadgets/booms/basic/massive/effector/effectormain