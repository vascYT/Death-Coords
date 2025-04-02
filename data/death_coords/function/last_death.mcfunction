scoreboard players reset @s death_coords.death_count
advancement revoke @s only death_coords:death

execute if entity @s[nbt={Health:0.0f}] store result score @s death_coords.death_x run data get entity @s Pos[0] 1
execute if entity @s[nbt={Health:0.0f}] store result score @s death_coords.death_y run data get entity @s Pos[1] 1
execute if entity @s[nbt={Health:0.0f}] store result score @s death_coords.death_z run data get entity @s Pos[2] 1

tellraw @s [{"text":"☠ ","color":"gray"}, {"score":{"name":"@s","objective":"death_coords.death_x"}, color: "red"},{"text":", ", color: "red"},{"score":{"name":"@s","objective":"death_coords.death_y"}, color: "red"},{"text":", ", color: "red"},{"score":{"name":"@s","objective":"death_coords.death_z"}, color: "red"}]
