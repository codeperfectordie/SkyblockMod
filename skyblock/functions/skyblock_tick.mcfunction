scoreboard players add @e[tag=conditional] TICS_01_SEC 1
scoreboard players add @e[tag=conditional] TICS_05_SEC 1
scoreboard players add @e[tag=conditional] TICS_10_SEC 1
scoreboard players add @e[tag=conditional] TICS_30_SEC 1
scoreboard players add @e[tag=conditional] TICS_60_SEC 1

execute @e[tag=conditional,scores={TICS_01_SEC=20   }] ~ ~ ~ scoreboard players add @e[tag=conditional] SEC 1
execute @e[tag=conditional,scores={TICS_01_SEC=20   }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_01_SEC 1
execute @e[tag=conditional,scores={TICS_05_SEC=200  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_05_SEC 1
execute @e[tag=conditional,scores={TICS_10_SEC=400  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_10_SEC 1
execute @e[tag=conditional,scores={TICS_30_SEC=600  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_30_SEC 1
execute @e[tag=conditional,scores={TICS_60_SEC=1200 }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_60_SEC 1

function skyblock_randblock

scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=20   }] TICS_01_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_05_SEC=200  }] TICS_05_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_10_SEC=400  }] TICS_10_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_30_SEC=600  }] TICS_30_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_60_SEC=1200 }] TICS_60_SEC 0
