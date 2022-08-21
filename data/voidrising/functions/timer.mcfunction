scoreboard players add time0 time 1
execute as @e[tag=riser] at @s if score time0 time = warning_time time if score rising_status global matches 1 run title @a actionbar {"text":"The void will rise shortly!","color":"red"}


# 1.18 support
execute if score legacy global matches 1.. as @e[tag=riser] at @s if score time0 time = rising_time time unless score @s y matches 245.. run function voidrising:rise
execute unless score legacy global matches 1.. as @e[tag=riser] at @s if score time0 time = rising_time time unless score @s y matches 310.. run function voidrising:rise