execute if score enabled global matches 0 run bossbar set voidrising:status name {"text":"The void is not currently rising!","color":"green"}
bossbar set voidrising:status name [{"score":{"name":"@e[tag=riser,limit=1]","objective":"y"},"bold":true,"color":"red"},{"text":"/","color":"dark_red","bold":false},{"text":"245","color":"red","bold":false}]

bossbar set voidrising:status color red