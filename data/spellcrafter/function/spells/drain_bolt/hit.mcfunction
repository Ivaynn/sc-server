#> as projectile, at @s
# projectile hit


# Damage target
scoreboard players operation $id spellcrafter.tmp = @s spellcrafter.id
scoreboard players operation $damage spellcrafter.tmp = @s spellcrafter.damage
scoreboard players operation $blind spellcrafter.tmp = @s spellcrafter.blind

scoreboard players set $success spellcrafter.tmp 0
execute if score $damage spellcrafter.tmp matches 1.. positioned ~ ~-0.75 ~ as @e[distance=..1.5,type=!#spellcrafter:untargetable] run function spellcrafter:damage/add
execute positioned ~ ~-0.75 ~ as @e[distance=..1.5,limit=1,sort=nearest,type=#spellcrafter:caster,type=!#spellcrafter:untargetable,tag=spellcrafter.caster,tag=!spellcrafter.untargetable] run function spellcrafter:spells/drain_bolt/as_target


# Effects
execute if score $success spellcrafter.tmp matches 1.. run playsound minecraft:entity.allay.item_thrown player @a[distance=..100] ~ ~ ~ 2 0.9
