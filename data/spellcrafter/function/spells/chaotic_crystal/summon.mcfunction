#> as projectile, on summon, at @s
# instant cast

execute summon minecraft:item_display run function spellcrafter:spells/chaotic_crystal/as_display
playsound minecraft:block.beacon.activate player @a[distance=..100] ~ ~ ~ 2 1.0
