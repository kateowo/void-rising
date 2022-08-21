# Void Rising
# Main loop


# Try to find a player and load setup-flow
execute as @a unless score setup_flow internal matches 1 run function voidrising:setup_flow

# Runs the necessary functions & stores variables
execute if score bossbar_status global matches 1.. run function voidrising:bossbar
execute if score enabled global matches 1.. run function voidrising:timer
# Manage spectator deaths
execute as @a if score @s death matches 1.. if score spectator_death global matches 1.. run function voidrising:death

# Store the riser's Y position
execute as @e[tag=riser] at @s store result score @s y run data get entity @s Pos[1]

# Ensures lag is handled
execute if score kill_fallblocks global matches 1.. run kill @e[type=falling_block]

# Stores current timer & max y level in the bossbar
execute store result bossbar voidrising:status value run scoreboard players get time0 time
execute store result bossbar voidrising:status max run scoreboard players get rising_time time

# Sets the bossbar players
execute unless score bossbar_status global matches 1.. run bossbar set voidrising:status players
execute if score bossbar_status global matches 1.. run bossbar set voidrising:status players @a
# Disables actionbar messages if the bossbar is enabled
execute if score bossbar_status global matches 1.. run scoreboard players set rising_status global 0