#> [tick] as summoned entity, at @s


# Invulnerability timer
execute if score @s spellcrafter.cooldown matches 1.. run scoreboard players remove @s spellcrafter.cooldown 1
execute if score @s spellcrafter.cooldown matches 1 run data modify entity @s Invulnerable set value 0b


# Tick
execute as @s[type=minecraft:goat,tag=spellcrafter.spell.angry_goat] at @s run function spellcrafter:spells/angry_goat/tick
execute as @s[type=minecraft:endermite,tag=spellcrafter.spell.summon_endermite] at @s run function spellcrafter:spells/summon_endermite/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.summon_crystal] at @s run function spellcrafter:spells/summon_crystal/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.healing_circle] at @s run function spellcrafter:spells/healing_circle/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.healing_crystal] at @s run function spellcrafter:spells/healing_crystal/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.chaotic_crystal] at @s run function spellcrafter:spells/chaotic_crystal/tick
execute as @s[type=minecraft:block_display,tag=spellcrafter.spell.anchor_explosion] at @s run function spellcrafter:spells/anchor_explosion/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.ender_eye] at @s run function spellcrafter:spells/ender_eye/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.toxic_cloud] at @s run function spellcrafter:spells/toxic_cloud/tick
execute as @s[type=minecraft:item_display,tag=spellcrafter.spell.arcane_shield] at @s run function spellcrafter:spells/arcane_shield/tick


# Despawn timer
scoreboard players remove @s spellcrafter.age 1
execute unless score @s spellcrafter.age matches 1.. at @s run function spellcrafter:as_summon/timeout
