#> as projectile, at @s

execute if score @s spellcrafter.age matches 80.. run particle minecraft:dust{color:[0.1,0.1,0.1],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
execute if score @s spellcrafter.age matches 60..79 run particle minecraft:dust{color:[0.3,0.3,0.3],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
execute if score @s spellcrafter.age matches 40..59 run particle minecraft:dust{color:[0.5,0.5,0.5],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
execute if score @s spellcrafter.age matches 20..39 run particle minecraft:dust{color:[0.7,0.7,0.7],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
execute if score @s spellcrafter.age matches ..19 run particle minecraft:dust{color:[0.9,0.9,0.9],scale:1.25} ~ ~ ~ 0 0 0 0 1 force @a[distance=..100]
