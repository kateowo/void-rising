# Void Rising
# Rise up 1 block


# Resets the timer score
scoreboard players set time0 time 0

# Fills away all blocks on the riser y level and rises up a block unless y is 245
execute as @e[tag=riser] at @s run fill ~-51 ~-1 ~-51 ~51 ~1 ~51 barrier
execute as @e[tag=riser] at @s run fill ~-50 ~ ~-50 ~50 ~ ~50 air
execute as @e[tag=riser] at @s run tp @s ~ ~1 ~

# Sends chat messages & alert sounds
execute if score rising_status global matches 1 run title @a actionbar [{"text":"The void has risen to y","color":"dark_red"},{"score":{"name":"@e[tag=riser,limit=1]","objective":"y"},"color":"dark_red"}]
execute if score sound_effects global matches 1 as @a at @s run playsound minecraft:entity.enderman.teleport ambient @s