#> as projectile, on summon, at the summon position (not at @s)
#> recursive function (limited by score "$spell.remote_back spellcrafter.tmp")

execute at @s run tp @s ^ ^ ^-1
execute at @s if block ~ ~ ~ #spellcrafter:anti_magic run return run function spellcrafter:as_projectile/remove
scoreboard players remove $spell.remote_back spellcrafter.tmp 1
execute if score $spell.remote_back spellcrafter.tmp matches 1.. run function spellcrafter:spells/remote_back/cast
