#> as player, at @s


# Convert room id into room coordinates
scoreboard players operation $room.id scarena.tmp = @s scarena.player.room_id
function scarena:rooms/new/get_coords


# Schedule structure load
data modify storage scarena:queue rooms append value {id:0, x:0, z:-1024}
execute store result storage scarena:queue rooms[-1].id int 1 run scoreboard players get @s scarena.player.room_id
execute store result storage scarena:queue rooms[-1].x int 1 run scoreboard players get $room.x scarena.tmp
execute store result storage scarena:queue rooms[-1].z int 1 run scoreboard players get $room.z scarena.tmp
schedule function scarena:rooms/structure/schedule 1t
