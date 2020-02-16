# as server


# When airborne
function bird:gadgets/booms/time/timestop/airborne/airbornemain

# When effector lands
execute as @e[tag=timestopeffector, tag=detectground] at @s run function bird:gadgets/booms/time/timestop/effector/effectormain