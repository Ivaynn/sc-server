#> as projectile, on summon

execute as @s[tag=spellcrafter.spell.magic_missile] run playsound minecraft:entity.illusioner.cast_spell player @a[distance=..100] ~ ~ ~ 2 1.5
execute as @s[tag=spellcrafter.spell.fireball] run playsound minecraft:item.firecharge.use player @a[distance=..100] ~ ~ ~ 2 1.2
execute as @s[tag=spellcrafter.spell.laser] run playsound minecraft:block.beacon.activate player @a[distance=..100] ~ ~ ~ 2 2
execute as @s[tag=spellcrafter.spell.revealing_bolt] run playsound minecraft:entity.glow_squid.ambient player @a[distance=..100] ~ ~ ~ 2 1.5
execute as @s[tag=spellcrafter.spell.arcane_reaper] run playsound minecraft:entity.evoker.prepare_summon player @a[distance=..100] ~ ~ ~ 2 1.5
execute as @s[tag=spellcrafter.spell.shulker_bullet] run playsound minecraft:entity.shulker.shoot player @a[distance=..100] ~ ~ ~ 2 1.2
execute as @s[tag=spellcrafter.spell.poison_dart] run playsound minecraft:entity.splash_potion.throw player @a[distance=..100] ~ ~ ~ 2 1.25
execute as @s[tag=spellcrafter.spell.freezing_bolt] run playsound minecraft:entity.snow_golem.hurt player @a[distance=..100] ~ ~ ~ 2 0.8
execute as @s[tag=spellcrafter.spell.boomerang] run playsound minecraft:entity.bat.takeoff player @a[distance=..100] ~ ~ ~ 2 1.6
execute as @s[tag=spellcrafter.spell.crystal_laser] run playsound minecraft:item.trident.thunder player @a[distance=..100] ~ ~ ~ 2 2
execute as @s[tag=spellcrafter.spell.wither_blast] run playsound minecraft:entity.wither.shoot player @a[distance=..100] ~ ~ ~ 2 1.0
execute as @s[tag=spellcrafter.spell.vampiric_shot] run playsound minecraft:entity.phantom.hurt player @a[distance=..100] ~ ~ ~ 2 0.7
execute as @s[tag=spellcrafter.spell.drain_bolt] run playsound minecraft:entity.allay.item_taken player @a[distance=..100] ~ ~ ~ 2 0.8
execute as @s[tag=spellcrafter.spell.healing_bolt] run playsound minecraft:entity.breeze.jump player @a[distance=..100] ~ ~ ~ 2 1.4
execute as @s[tag=spellcrafter.spell.soul_link] run playsound minecraft:entity.vex.death player @a[distance=..100] ~ ~ ~ 2 0.8
execute as @s[tag=spellcrafter.spell.resonant_pulse] run playsound minecraft:entity.warden.attack_impact player @a[distance=..100] ~ ~ ~ 2 0.8
execute as @s[tag=spellcrafter.spell.bouncy_laser] run playsound minecraft:item.trident.return player @a[distance=..100] ~ ~ ~ 2 1.6
execute as @s[tag=spellcrafter.spell.lightning_bolt] run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..100] ~ ~ ~ 2 2


# Special case: kinetic bolt's pitch depends on its starting speed
execute as @s[tag=spellcrafter.spell.kinetic_bolt] if score @s spellcrafter.speed matches ..2 run playsound minecraft:entity.firework_rocket.shoot player @a[distance=..100] ~ ~ ~ 2 1.2
execute as @s[tag=spellcrafter.spell.kinetic_bolt] if score @s spellcrafter.speed matches 3..5 run playsound minecraft:entity.firework_rocket.shoot player @a[distance=..100] ~ ~ ~ 2 1.3
execute as @s[tag=spellcrafter.spell.kinetic_bolt] if score @s spellcrafter.speed matches 6..8 run playsound minecraft:entity.firework_rocket.shoot player @a[distance=..100] ~ ~ ~ 2 1.4
execute as @s[tag=spellcrafter.spell.kinetic_bolt] if score @s spellcrafter.speed matches 9..11 run playsound minecraft:entity.firework_rocket.shoot player @a[distance=..100] ~ ~ ~ 2 1.5
execute as @s[tag=spellcrafter.spell.kinetic_bolt] if score @s spellcrafter.speed matches 12.. run playsound minecraft:entity.firework_rocket.shoot player @a[distance=..100] ~ ~ ~ 2 1.6
