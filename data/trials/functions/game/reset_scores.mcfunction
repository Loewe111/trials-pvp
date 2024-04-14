
scoreboard objectives remove trials_mob_kills
scoreboard objectives add trials_mob_kills minecraft.custom:minecraft.mob_kills
scoreboard objectives remove trials_player_kills
scoreboard objectives add trials_player_kills minecraft.custom:minecraft.player_kills

scoreboard objectives remove trials_scoreboard
scoreboard objectives add trials_scoreboard dummy [{"text":"⛏ ","color":"gray"},{"text":"TRIAL ","bold":true,"color":"dark_red"},{"text":"CHAMBERS ","bold":true,"color":"red"},{"text":"🗡","color":"gray"}]
scoreboard objectives setdisplay sidebar trials_scoreboard
scoreboard objectives modify trials_scoreboard numberformat styled {"color":"green"}
scoreboard players set @a trials_scoreboard 0