# Void Rising
# Default options


# Defines scores in the global scoreboard
scoreboard players set warning_time time 40
scoreboard players set rising_time time 100
scoreboard players set spectator_death global 1
scoreboard players set sound_effects global 1
scoreboard players set rising_status global 1
scoreboard players set bossbar_status global 0
scoreboard players set kill_fallblocks global 1
scoreboard players set legacy global 0

scoreboard players set timer_enabled global 0
scoreboard objectives add alive_players dummy
scoreboard objectives modify alive_players displayname {"text":"Void Rising","color":"red","bold":true}
bossbar add voidrising:status {"text":""}
bossbar set voidrising:status players @a
bossbar set voidrising:status color red
bossbar set voidrising:status style notched_10

gamerule doImmediateRespawn true
forceload add 0 0


scoreboard players set defaults global 1