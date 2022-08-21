kill @e[tag=riser]
execute unless entity @e[tag=riser] run summon armor_stand 0 0 0 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["riser"]}

scoreboard players set enabled global 1