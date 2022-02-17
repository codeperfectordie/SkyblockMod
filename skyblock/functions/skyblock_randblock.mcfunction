scoreboard players random @e[tag=conditional] RAND 1 100 

execute @e[tag=conditional] ~ ~ ~ detect 0 150 0 air -1 scoreboard players set @e[tag=conditional] IS_AIR 1

execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ scoreboard players add @e[tag=conditional] BLOCK_COUNT 1
execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ scoreboard players add @e[tag=conditional] PHASE 1

#display the block count and phase if it has changed
execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ scoreboard players operation @a BLOCK_COUNT = @e[tag=conditional] BLOCK_COUNT
execute @e[tag=conditional,scores={IS_AIR=1 }] ~ ~ ~ titleraw @a actionbar {"rawtext":[{"text":"Phase "},{"score":{"name":"*","objective":"PHASE"}},{"text":": "},{"score":{"name":"*","objective":"BLOCK_COUNT"}},{"text":" blocks destroyed!"}]}

execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ scoreboard players operation @a PHASE = @e[tag=conditional] PHASE
execute @e[tag=conditional,scores={BLOCK_COUNT=100}] ~ ~ ~ titleraw @a title {"rawtext":[{"text":"Starting phase "},{"score":{"name":"*","objective":"PHASE"}},{"text":"!"}]}

#random blocks for all the phases:
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=1..2   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=3..22   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=23..32   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=33..40   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=41..56   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=57..71   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=72..76   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=77..79   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=80..84   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=85..94   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=95   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=96   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=97..98   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=1..2,RAND=99..100   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep

execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=1..2   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=3..22   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=23..32   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=33..40   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=41..51   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=52..66   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=67..71   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=72..74   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=75..81   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=82..91   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=92   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=93   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=94   }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=95   }] ~ ~ ~ setblock 0 150 0 glass 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=96   }] ~ ~ ~ setblock 0 150 0 lapis_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=97..98   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=3..4,RAND=99..100   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep

execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=1..4   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=5..19   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=20..24   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=25..32   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=33..42   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=43..57   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=58..62   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=63..67   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=68..74   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=75..84   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=85   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=86   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=87   }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=88   }] ~ ~ ~ setblock 0 150 0 glass 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=89   }] ~ ~ ~ setblock 0 150 0 lapis_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=90   }] ~ ~ ~ setblock 0 150 0 sticky_piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=91   }] ~ ~ ~ setblock 0 150 0 piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=92   }] ~ ~ ~ setblock 0 150 0 yellow_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=93   }] ~ ~ ~ setblock 0 150 0 red_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=94   }] ~ ~ ~ setblock 0 150 0 slime 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=95   }] ~ ~ ~ setblock 0 150 0 hay_block 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=96   }] ~ ~ ~ setblock 0 150 0 shulker_box 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=97..98   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=5..10,RAND=99..100   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep

execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=1..4   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=5..19   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=20..21   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=22..29   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=30..39   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=40..54   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=55..59   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=60..64   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=65..73   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=74..83   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=84..85   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=86   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=87..88   }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=89   }] ~ ~ ~ setblock 0 150 0 glass 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=90..91   }] ~ ~ ~ setblock 0 150 0 lapis_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=92   }] ~ ~ ~ setblock 0 150 0 sticky_piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=93   }] ~ ~ ~ setblock 0 150 0 piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=94   }] ~ ~ ~ setblock 0 150 0 yellow_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=95   }] ~ ~ ~ setblock 0 150 0 red_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=96   }] ~ ~ ~ setblock 0 150 0 slime 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=97   }] ~ ~ ~ setblock 0 150 0 hay_block 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=98   }] ~ ~ ~ setblock 0 150 0 shulker_box 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=99   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=11..15,RAND=100   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep

execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=1..4   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=5..19   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=20   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=21..25   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=26..35   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=36..50   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=51..55   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=56   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=57..66   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=67..76   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=77..78   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=79   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=80..82   }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=83   }] ~ ~ ~ setblock 0 150 0 glass 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=84..86   }] ~ ~ ~ setblock 0 150 0 lapis_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=87   }] ~ ~ ~ setblock 0 150 0 sticky_piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=88   }] ~ ~ ~ setblock 0 150 0 piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=89   }] ~ ~ ~ setblock 0 150 0 yellow_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=90   }] ~ ~ ~ setblock 0 150 0 red_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=91   }] ~ ~ ~ setblock 0 150 0 slime 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=92   }] ~ ~ ~ setblock 0 150 0 hay_block 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=93   }] ~ ~ ~ setblock 0 150 0 shulker_box 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=94   }] ~ ~ ~ setblock 0 150 0 end_portal_frame 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=95   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=16..20,RAND=96   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep

execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=1..4   }] ~ ~ ~ function skyblock_randchest
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=5..19   }] ~ ~ ~ setblock 0 150 0 wood 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=20   }] ~ ~ ~ setblock 0 150 0 concrete 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=21..25   }] ~ ~ ~ setblock 0 150 0 sapling 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=26..35   }] ~ ~ ~ setblock 0 150 0 cobblestone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=36..50   }] ~ ~ ~ setblock 0 150 0 dirt 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=51..55   }] ~ ~ ~ setblock 0 150 0 wool 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=56   }] ~ ~ ~ setblock 0 150 0 sand 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=57..66   }] ~ ~ ~ setblock 0 150 0 iron ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=67..76   }] ~ ~ ~ setblock 0 150 0 coal_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=77..78   }] ~ ~ ~ setblock 0 150 0 emerald_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=79   }] ~ ~ ~ setblock 0 150 0 gold_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=80..85   }] ~ ~ ~ setblock 0 150 0 diamond_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=86   }] ~ ~ ~ setblock 0 150 0 glass 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=87..89   }] ~ ~ ~ setblock 0 150 0 lapis_ore 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=90   }] ~ ~ ~ setblock 0 150 0 sticky_piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=91   }] ~ ~ ~ setblock 0 150 0 piston 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=92   }] ~ ~ ~ setblock 0 150 0 yellow_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=93   }] ~ ~ ~ setblock 0 150 0 red_flower 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=94   }] ~ ~ ~ setblock 0 150 0 slime 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=95   }] ~ ~ ~ setblock 0 150 0 hay_block 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=96   }] ~ ~ ~ setblock 0 150 0 shulker_box 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=97..98   }] ~ ~ ~ setblock 0 150 0 end_portal_frame 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=99   }] ~ ~ ~ setblock 0 150 0 stone 1 keep
execute @e[tag=conditional,scores={IS_AIR=1,PHASE=21..1000,RAND=100   }] ~ ~ ~ setblock 0 150 0 gravel 1 keep







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

