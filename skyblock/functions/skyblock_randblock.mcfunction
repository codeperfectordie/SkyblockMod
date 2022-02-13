scoreboard players random @e[tag=conditional] RAND 1 100 

execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ scoreboard players add @e[tag=conditional] BLOCK_COUNT 1
execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ scoreboard players add @e[tag=conditional] PHASE 1

#display the block count and phase if it has changed
execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ scoreboard players operation @a BLOCK_COUNT = @e[tag=conditional] BLOCK_COUNT
execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"score":{"name":"*","objective":"BLOCK_COUNT"}},{"text":" blocks destroyed!"}]}

execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ scoreboard players operation @a PHASE = @e[tag=conditional] PHASE
execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ titleraw @a title {"rawtext":[{"text":"Starting phase "},{"score":{"name":"*","objective":"PHASE"}},{"text":"!"}]}


#these commands are for phase 1-3
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=1..40   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=41..60  }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=61..80 }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=81..85  }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=86..90  }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..3,RAND=91..95  }] ~ ~ ~ setblock 0 150 0 wool 1 keep


#these commands are for phase 4-6
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=1..10   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=11..20  }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=21..40 }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=31..35  }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=36..40  }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=41..50   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=51..60  }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=61..70 }] ~ ~ ~ setblock 0 150 0 iron_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=71..80 }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=81..90 }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=91..98 }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=4..6,RAND=99..100 }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep

#these commands are for phase 7-9
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=1..10   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=11..20  }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=21..30 }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=31..35  }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=36..40  }] ~ ~ ~ setblock 0 150 0 chest 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=41..50   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=51..60  }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=61..70 }] ~ ~ ~ setblock 0 150 0 iron_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=71..80 }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=81..90 }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=91..98 }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=99..100 }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=7..9,RAND=99..100 }] ~ ~ ~ function skyblock_randchest



#these commands are for phase 10+
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=1..10   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=11..20  }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=21..30 }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=31..35  }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=36..40  }] ~ ~ ~ setblock 0 150 0 chest 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=41..50   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=51..60  }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=61..70 }] ~ ~ ~ setblock 0 150 0 iron_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=71..80 }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=81..90 }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=91..98 }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=99..100 }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=10..20,RAND=99..100 }] ~ ~ ~ function skyblock_randchest


#possibly spawn mob as well
#this means mobs will not spawn unless a block is broken
execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ function skyblock_randmob

scoreboard players set @e[tag=conditional] IS_AIR 0
execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ scoreboard players set @e[tag=conditional] BLOCK_COUNT 0








































#spawn end portals / lapis / ores / animals / mobs










#execute @e[tag=conditional,scores={PHASE=0,RAND=2  }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=3  }] ~ ~ ~ setblock 0 150 0 concrete 2 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=4  }] ~ ~ ~ setblock 0 150 0 concrete 3 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=5  }] ~ ~ ~ setblock 0 150 0 concrete 4 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=6  }] ~ ~ ~ setblock 0 150 0 concrete 5 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=7  }] ~ ~ ~ setblock 0 150 0 concrete 6 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=8  }] ~ ~ ~ setblock 0 150 0 concrete 7 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=9  }] ~ ~ ~ setblock 0 150 0 concrete 8 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=10 }] ~ ~ ~ setblock 0 150 0 concrete 9 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=11 }] ~ ~ ~ setblock 0 150 0 concrete 10 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=12 }] ~ ~ ~ setblock 0 150 0 concrete 11 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=13 }] ~ ~ ~ setblock 0 150 0 concrete 12 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=14 }] ~ ~ ~ setblock 0 150 0 concrete 13 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=15 }] ~ ~ ~ setblock 0 150 0 concrete 14 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=16 }] ~ ~ ~ setblock 0 150 0 concrete 15 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=19 }] ~ ~ ~ setblock 0 150 0 wood 2 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=20 }] ~ ~ ~ setblock 0 150 0 wood 3 keep
#execute @e[tag=conditional,scores={PHASE=0,RAND=21 }] ~ ~ ~ setblock 0 150 0 wood 4 keep




#tag @e[type=armor_stand] add conditional
#setblock @e[tag=conditional]
#scoreboard players random RAND1 RAND 0 100 
#tickingarea

#scoreboard players set @e[tag=conditional] PHASE 0
#1 tick
#repeat

#function randblock
#1 tick
#repeat

#scoreboard players add @e[tag=conditional] PHASE 0
#6000 tick
#repeat

