#> as projectile, on summon, at @s


# Get random rotation
execute store result entity @s Rotation[0] float 1 run random value -179..180
execute store result entity @s Rotation[1] float 1 run random value -90..90
