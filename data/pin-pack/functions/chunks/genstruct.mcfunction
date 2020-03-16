clone ~ ~ ~ ~1 ~ ~ ~ 0 ~ replace normal
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:1,posY:1}
data modify block ~ ~ ~ name set from entity @s Item.tag.BlockEntityTag.name
data modify block ~ ~ ~ posY set from entity @s Item.tag.BlockEntityTag.posY

kill @s

loot spawn ~ ~ ~ loot pin-pack:structorientation

data modify block ~ ~ ~ mirror set from entity @e[type=item,distance=0,limit=1] Item.tag.BlockEntityTag.mirror
data modify block ~ ~ ~ rotation set from entity @e[type=item,distance=0,limit=1] Item.tag.BlockEntityTag.rotation

setblock ~1 ~ ~ minecraft:redstone_block

execute if block ~ ~ ~ minecraft:structure_block run clone ~ 0 ~ ~ 0 ~ ~ ~ ~ replace normal
execute if block ~1 ~ ~ minecraft:redstone_block run clone ~1 0 ~ ~1 0 ~ ~1 ~ ~ replace normal
fill ~ 0 ~ ~1 0 ~ minecraft:bedrock