#> as projectile, at @s


particle minecraft:end_rod ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]
execute positioned ^ ^ ^.5 run particle minecraft:crit ~ ~ ~ .3 .3 .3 0 0 force @a[distance=..100]
