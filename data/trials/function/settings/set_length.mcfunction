$scoreboard players set round_length trials $(minutes)
scoreboard players operation round_length trials *= MINUTE trials
scoreboard players operation round_length trials *= TICKS trials

$title @a actionbar [{"text":"Set round length to","color":"yellow"},{"text":" $(minutes) ","color":"green"},{"text":"minutes","color":"yellow"}]
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2

