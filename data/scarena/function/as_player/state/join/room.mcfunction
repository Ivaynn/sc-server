#> as player, at @s


# Find available room
function scarena:rooms/new/as_player
execute unless score @s scarena.player.room_id matches 1.. run return 0
team join rooms @s


# Init
scoreboard players set @s scarena.player.state 2
function scarena:as_player/disable_triggers
scoreboard players set @s[scores={scarena.game.id=1..}] scarena.game.id 0


# Reset player
gamemode survival @s[gamemode=!survival]
attribute @s minecraft:max_health base set 20
effect clear @s
effect give @s minecraft:instant_health 1 100 true


# SpellCrafter
scoreboard players set @s spellcrafter.inf_page 102
tag @s add spellcrafter.caster
tag @s remove spellcrafter.untargetable
scoreboard players set @s spellcrafter.mana_reg 25
scoreboard players set @s spellcrafter.mana 10000
scoreboard players set @s spellcrafter.max_mana 10000

function scarena:as_player/remove_non_wands
