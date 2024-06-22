$scoreboard players set enable_music trials $(enable)

execute if score enable_music trials matches 1 run title @a actionbar [{"text":"Enabled","color":"green"},{"text":" Music","color":"yellow"}]
execute if score enable_music trials matches 0 run title @a actionbar [{"text":"Disabled","color":"red"},{"text":" Music","color":"yellow"}]
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2
