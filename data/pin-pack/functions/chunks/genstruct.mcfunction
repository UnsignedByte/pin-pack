clone ~ ~ ~ ~1 ~ ~ ~ 0 ~ replace normal
setblock ~ ~ ~ minecraft:structure_block[mode=load]{mode:"LOAD",posX:1,posY:1}
data modify block ~ ~ ~ name set from entity @s Item.tag.BlockEntityTag.name
data modify block ~ ~ ~ posY set from entity @s Item.tag.BlockEntityTag.posY
setblock ~1 ~ ~ minecraft:redstone_block
setblock ~1 ~ ~ minecraft:air

execute if block ~ ~ ~ minecraft:structure_block run clone ~ 0 ~ ~ 0 ~ ~ ~ ~ replace normal
execute if block ~1 ~ ~ minecraft:redstone_block run clone ~1 0 ~ ~1 0 ~ ~1 ~ ~ replace normal
fill ~ 0 ~ ~1 0 ~ minecraft:bedrock

kill @s