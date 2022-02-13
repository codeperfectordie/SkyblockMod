#create all variables
scoreboard objectives add RAND dummy
scoreboard objectives add RAND_CHEST dummy
scoreboard objectives add RAND_MOB dummy
scoreboard objectives add BLOCK_COUNT dummy
scoreboard objectives add PHASE dummy
scoreboard objectives add IS_AIR dummy
scoreboard objectives add IS_CHEST dummy

scoreboard objectives add SEC dummy
scoreboard objectives add TICS_01_SEC dummy
scoreboard objectives add TICS_05_SEC dummy
scoreboard objectives add TICS_10_SEC dummy
scoreboard objectives add TICS_30_SEC dummy
scoreboard objectives add TICS_60_SEC dummy
scoreboard objectives add IS_01_SEC dummy
scoreboard objectives add IS_05_SEC dummy
scoreboard objectives add IS_10_SEC dummy
scoreboard objectives add IS_30_SEC dummy
scoreboard objectives add IS_60_SEC dummy


scoreboard players set @e[tag=conditional] RAND 0 
scoreboard players set @e[tag=conditional] RAND_CHEST 0 
scoreboard players set @e[tag=conditional] RAND_MOB 0 
scoreboard players set @e[tag=conditional] BLOCK_COUNT 0
scoreboard players set @e[tag=conditional] PHASE 1
scoreboard players set @e[tag=conditional] IS_AIR 0
scoreboard players set @e[tag=conditional] IS_CHEST 0

#time related vars
scoreboard players set @e[tag=conditional] SEC 0
scoreboard players set @e[tag=conditional] TICS_01_SEC 0
scoreboard players set @e[tag=conditional] TICS_05_SEC 0
scoreboard players set @e[tag=conditional] TICS_10_SEC 0
scoreboard players set @e[tag=conditional] TICS_30_SEC 0
scoreboard players set @e[tag=conditional] TICS_60_SEC 0
scoreboard players set @e[tag=conditional] IS_01_SEC 0
scoreboard players set @e[tag=conditional] IS_05_SEC 0
scoreboard players set @e[tag=conditional] IS_10_SEC 0
scoreboard players set @e[tag=conditional] IS_30_SEC 0
scoreboard players set @e[tag=conditional] IS_60_SEC 0



































#scoreboard players set @e[tag=conditional] MOBTIMER 0
#scoreboard objectives add VAR1 dummy
#scoreboard objectives add VAR2 dummy
#scoreboard objectives add MOBTIMER dummy
#scoreboard players set @e[tag=conditional] VAR1 0
#scoreboard players set @e[tag=conditional] VAR2 0