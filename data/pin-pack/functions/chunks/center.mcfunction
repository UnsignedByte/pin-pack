execute store result score @s xpos run data get entity @s Pos[0]
execute store result score @s zpos run data get entity @s Pos[2]

scoreboard players operation @s xpos /= chunksize constants
scoreboard players operation @s zpos /= chunksize constants

scoreboard players operation @s xpos *= chunksize constants
scoreboard players operation @s zpos *= chunksize constants

scoreboard players operation @s xpos += halfchunksize constants
scoreboard players operation @s zpos += halfchunksize constants

execute store result entity @s Pos[0] double 1 run scoreboard players get @s xpos
execute store result entity @s Pos[2] double 1 run scoreboard players get @s zpos

# populate if chunk unloaded

execute at @s unless entity @e[type=minecraft:armor_stand,name="populated",nbt={Invisible:1b,NoGravity:1b,Invulnerable:1b},distance=0] run function pin-pack:chunks/populate

#save chunk as populated

execute at @s unless entity @e[type=minecraft:armor_stand,name="populated",nbt={Invisible:1b,NoGravity:1b,Invulnerable:1b},distance=0] run data modify entity @s CustomName set value '{"text":"populated"}'

execute at @s run kill @e[type=minecraft:armor_stand,name="chunkmid",nbt={Invisible:1b,NoGravity:1b,Invulnerable:1b},distance=0]