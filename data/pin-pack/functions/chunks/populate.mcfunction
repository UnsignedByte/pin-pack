loot spawn ~ ~ ~ loot pin-pack:structsinchunk

spreadplayers ~ ~ 4 8 false @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_block"}}]

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_block"}}] at @s run function pin-pack:chunks/genstruct

summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["processed","marker"]}
# summon minecraft:armor_stand ~ ~ ~ {Marker:1,Invisible:1,NoGravity:1,Invulnerable:1,Tags:["processed","marker"]}