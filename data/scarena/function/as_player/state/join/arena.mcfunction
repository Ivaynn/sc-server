#> as player, at @s
scoreboard players set @s scarena.player.state 3
function scarena:as_player/disable_triggers
scoreboard players set @s[scores={scarena.game.id=1..}] scarena.game.id 0
scoreboard players set @s scarena.player.room_id 0
team join arena @s

# Reset player
gamemode survival @s[gamemode=!survival]
spawnpoint @s 0 -42 0 0
xp set @s 0 points
xp set @s 0 levels
effect clear @s
effect give @s minecraft:health_boost infinite 4 true
effect give @s minecraft:instant_health 1 100 true
effect give @s minecraft:saturation infinite 100 true


# Teleport
spreadplayers 1000 0 1 100 under -20 false @s
execute at @s run tp @s ~ ~.5 ~ facing 1000 ~ 0


# SpellCrafter
scoreboard players set @s spellcrafter.inf_page 0
tag @s add spellcrafter.caster
tag @s remove spellcrafter.untargetable
tag @s remove spellcrafter.inf_mana
tag @s remove spellcrafter.no_cooldown
scoreboard players set @s spellcrafter.mana 5000
scoreboard players set @s spellcrafter.cooldown 0

function scarena:as_player/remove_non_wands
