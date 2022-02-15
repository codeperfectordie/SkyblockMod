scoreboard players add @e[tag=conditional] TICS_01_SEC 1
scoreboard players add @e[tag=conditional] TICS_05_SEC 1
scoreboard players add @e[tag=conditional] TICS_10_SEC 1
scoreboard players add @e[tag=conditional] TICS_30_SEC 1
scoreboard players add @e[tag=conditional] TICS_60_SEC 1

scoreboard players set @e[tag=conditional] IS_02_TIC 0
scoreboard players set @e[tag=conditional] IS_01_SEC 0
scoreboard players set @e[tag=conditional] IS_05_SEC 0
scoreboard players set @e[tag=conditional] IS_10_SEC 0
scoreboard players set @e[tag=conditional] IS_30_SEC 0
scoreboard players set @e[tag=conditional] IS_60_SEC 0

execute @e[tag=conditional,scores={TICS_01_SEC=20   }] ~ ~ ~ scoreboard players add @e[tag=conditional] SEC 1
execute @e[tag=conditional,scores={TICS_01_SEC=20   }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_01_SEC 1
execute @e[tag=conditional,scores={TICS_05_SEC=100  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_05_SEC 1
execute @e[tag=conditional,scores={TICS_10_SEC=200  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_10_SEC 1
execute @e[tag=conditional,scores={TICS_30_SEC=600  }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_30_SEC 1
execute @e[tag=conditional,scores={TICS_60_SEC=1200 }] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_60_SEC 1


scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=0  }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=2  }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=4  }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=6  }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=8  }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=10 }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=12 }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=14 }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=16 }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=18 }] IS_02_TIC 1
scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=20 }] IS_02_TIC 1



function skyblock_randblock
execute @e[tag=conditional,scores={IS_05_SEC=1 }] ~ ~ ~ function skyblock_clear
execute @e[tag=conditional,scores={IS_02_TIC=1 }] ~ ~ ~ function chestGen

scoreboard players set @e[tag=conditional,scores={TICS_01_SEC=20   }] TICS_01_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_05_SEC=100  }] TICS_05_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_10_SEC=200  }] TICS_10_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_30_SEC=600  }] TICS_30_SEC 0
scoreboard players set @e[tag=conditional,scores={TICS_60_SEC=1200 }] TICS_60_SEC 0
