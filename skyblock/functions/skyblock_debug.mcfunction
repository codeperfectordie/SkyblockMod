scoreboard players operation @a RAND = @e[tag=conditional] RAND
scoreboard players operation @a RAND_CHEST = @e[tag=conditional] RAND_CHEST
scoreboard players operation @a RAND_MOB = @e[tag=conditional] RAND_MOB
scoreboard players operation @a BLOCK_COUNT = @e[tag=conditional] BLOCK_COUNT
scoreboard players operation @a PHASE = @e[tag=conditional] PHASE
scoreboard players operation @a IS_AIR = @e[tag=conditional] IS_AIR
scoreboard players operation @a IS_CHEST = @e[tag=conditional] IS_CHEST

tellraw @a {"rawtext":[{"text":"================="}]}
tellraw @a {"rawtext":[{"text":"RAND:"},{"score":{"name":"*","objective":"RAND"}}]}
tellraw @a {"rawtext":[{"text":"RAND_CHEST:"},{"score":{"name":"*","objective":"RAND_CHEST"}}]}
tellraw @a {"rawtext":[{"text":"RAND_MOB:"},{"score":{"name":"*","objective":"RAND_MOB"}}]}
tellraw @a {"rawtext":[{"text":"BLOCK_COUNT:"},{"score":{"name":"*","objective":"BLOCK_COUNT"}}]}
tellraw @a {"rawtext":[{"text":"PHASE:"},{"score":{"name":"*","objective":"PHASE"}}]}
tellraw @a {"rawtext":[{"text":"IS_AIR:"},{"score":{"name":"*","objective":"IS_AIR"}}]}
tellraw @a {"rawtext":[{"text":"IS_CHEST:"},{"score":{"name":"*","objective":"IS_CHEST"}}]}