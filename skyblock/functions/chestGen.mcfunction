#clone random chest 
#Issue is there is no direct way to place items in a chest in bedrock
#strategy is to have prefilled chests and drain them into our randomly generated chest using hoppers
#Go to 1006 -55 -1 and fill chests with whatever items you want in your random chest
#assume this will not get called unless there is a free spot for the chest or we are already building a chest (CHEST_STEP!=0)

#CHESTS START HERE: 1006 -55 -1
#FINISHED CHESTS GO HERE: 996 -55 -1
#REDSTONE PISTON ACTIVATOR GOES HERE: 993 -55 1

###########################
## INIT VARIABLES
###########################
scoreboard objectives add CHEST_STEP dummy
scoreboard objectives add CHEST_STEP_INIT dummy
scoreboard objectives add CHEST_ITEMS dummy
scoreboard objectives add RAND_ITEM dummy

#initialize this variable if not already set (needs to be non null value)
scoreboard players add @e[tag=conditional] IS_CHEST 0
scoreboard players add @e[tag=conditional] CHEST_STEP 0
scoreboard players add @e[tag=conditional] CHEST_STEP_INIT 0
scoreboard players add @e[tag=conditional] CHEST_ITEMS 0
scoreboard players add @e[tag=conditional] RAND_ITEM 0

execute @e[tag=conditional] ~ ~ ~ detect 996 -55 -1 air -1 scoreboard players set @e[tag=conditional] IS_CHEST 0

scoreboard players set @e[tag=conditional,scores={CHEST_STEP=0}] CHEST_ITEMS 0
scoreboard players set @e[tag=conditional,scores={CHEST_STEP=0}] RAND_ITEM 0
scoreboard players operation @e[tag=conditional] CHEST_STEP_INIT = @e[tag=conditional] CHEST_STEP

#step 1: init variables
scoreboard players random @e[tag=conditional,scores={CHEST_STEP=1}] CHEST_ITEMS 1 10

#step 2: create chest
execute @e[tag=conditional,scores={CHEST_STEP=2}] ~ ~ ~ setblock 1006 -55 -1 chest

#step 3: move chest to random hopper
scoreboard players random @e[tag=conditional,scores={CHEST_STEP=3}] RAND_ITEM 1 100

###########################
## DEBUGING OUTPUT
###########################
#outputs 
#execute @e[tag=conditional,scores={CHEST_STEP=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"================"}]}
execute @e[tag=conditional,scores={CHEST_STEP=1..1000}] ~ ~ ~ scoreboard players operation @a CHEST_STEP = @e[tag=conditional] CHEST_STEP
execute @e[tag=conditional,scores={CHEST_STEP=1..1000}] ~ ~ ~ scoreboard players operation @a CHEST_ITEMS = @e[tag=conditional] CHEST_ITEMS
execute @e[tag=conditional,scores={CHEST_STEP=1..1000}] ~ ~ ~ scoreboard players operation @a RAND_ITEM = @e[tag=conditional] RAND_ITEM
#execute @e[tag=conditional,scores={CHEST_STEP=1..1000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"STEP "},{"score":{"name":"*","objective":"CHEST_STEP"}},{"text":": "},{"score":{"name":"*","objective":"CHEST_ITEMS"}},{"text":"/"},{"score":{"name":"*","objective":"RAND_ITEM"}}]}

#LOGIC TO FILL CHEST WITH RANDOM ITEM
#DIAMOND: 		 997 -55 -2
#EMERALD: 		 998 -55 -2
#ICE:	 		 999 -55 -2
#BONE:			1002 -55 -2
#IRON_ORE:	 	1000 -55 -2
#TORCH: 		1003 -55 -2
#WOOD: 			1004 -55 -2
#DIRT: 			1005 -55 -2
#BREAD: 		1006 -55 -2
#COBBLESTONE: 	1001 -55 -2

#step 3: fill with the random item
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=1..25       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=26..45       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=46..55       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=56..60       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=61..65       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=66..71       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=72..77       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=78..82       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=83..87       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=88..91       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=92..93       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=94..95       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=96..97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=1..19       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=20..38       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=39..43       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=44..48       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=49..54       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=55..62       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=63..67       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=68..72       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=73..77       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=78..82       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=83..85       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=86..88       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=89..91       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=92       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=93..94       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=95       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=96       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=1..15       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=16..32       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=33..34       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=35..38       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=39..42       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=43..47       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=48..52       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=53..57       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=58..62       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=63..67       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=68..70       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=71..73       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=74..76       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=77       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=78       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=79..80       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=81       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=82..83       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=84       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=85..86       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=87..88       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=89..90       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=91..92       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=93       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=94..95       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=96..97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=1..9       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=10..23       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=24..25       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=26..27       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=28..32       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=33..36       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=37..41       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=42..46       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=47..50       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=51..54       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=55..58       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=59       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=60..62       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=63..65       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=66       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=67..69       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=70..72       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=73..74       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=75..77       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=78..80       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=81..83       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=84       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=85..87       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=88..91       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=92..95       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=96       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=1..5       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=6..15       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=16..20       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=21..25       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=26..32       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=33..37       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=38..42       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=43..47       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=48..52       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=53       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=54..56       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=57..60       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=61       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=62..65       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=66..69       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=70..72       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=73..75       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=76..78       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=79..81       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=82..83       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=84..86       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=87..90       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=91..94       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=95       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=96       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=1..5       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=6..10       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=11..15       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=16..24       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=25..29       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=30..34       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=35..39       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1002 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=40..44       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=45       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=46..48       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=49..53       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=54       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1003 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=55..59       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1001 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=60..64       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=65..67       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=68..70       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=71..73       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=74..76       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1006 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=77..78       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1005 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=79..81       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1000 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=82..85       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   997 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=86..89       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=90..91       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   998 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=92..93       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   1004 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=94..97       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   999 -49 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=98       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -55 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=99       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -52 -2  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=3,RAND_ITEM=100       }] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1   996 -49 -2  replace move

#step 4: reset chest back to start
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=1..25       }] ~ ~ ~ clone   1001 -55 -2    1001 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=26..45       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=46..55       }] ~ ~ ~ clone   1006 -55 -2    1006 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=56..60       }] ~ ~ ~ clone   1006 -49 -2    1006 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=61..65       }] ~ ~ ~ clone   1004 -49 -2    1004 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=66..71       }] ~ ~ ~ clone   1002 -49 -2    1002 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=72..77       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=78..82       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=83..87       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=88..91       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=92..93       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=94..95       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=96..97       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=1..2,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=1..19       }] ~ ~ ~ clone   1001 -55 -2    1001 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=20..38       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=39..43       }] ~ ~ ~ clone   1006 -55 -2    1006 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=44..48       }] ~ ~ ~ clone   1006 -49 -2    1006 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=49..54       }] ~ ~ ~ clone   1004 -49 -2    1004 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=55..62       }] ~ ~ ~ clone   1002 -49 -2    1002 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=63..67       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=68..72       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=73..77       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=78..82       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=83..85       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=86..88       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=89..91       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=92       }] ~ ~ ~ clone   1005 -49 -2    1005 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=93..94       }] ~ ~ ~ clone   999 -55 -2    999 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=95       }] ~ ~ ~ clone   1006 -52 -2    1006 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=96       }] ~ ~ ~ clone   997 -55 -2    997 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=97       }] ~ ~ ~ clone   998 -55 -2    998 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=3..4,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=1..15       }] ~ ~ ~ clone   1001 -55 -2    1001 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=16..32       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=33..34       }] ~ ~ ~ clone   1006 -55 -2    1006 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=35..38       }] ~ ~ ~ clone   1006 -49 -2    1006 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=39..42       }] ~ ~ ~ clone   1004 -49 -2    1004 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=43..47       }] ~ ~ ~ clone   1002 -49 -2    1002 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=48..52       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=53..57       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=58..62       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=63..67       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=68..70       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=71..73       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=74..76       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=77       }] ~ ~ ~ clone   1005 -49 -2    1005 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=78       }] ~ ~ ~ clone   997 -49 -2    997 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=79..80       }] ~ ~ ~ clone   999 -55 -2    999 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=81       }] ~ ~ ~ clone   1003 -49 -2    1003 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=82..83       }] ~ ~ ~ clone   1001 -49 -2    1001 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=84       }] ~ ~ ~ clone   997 -52 -2    997 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=85..86       }] ~ ~ ~ clone   1000 -52 -2    1000 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=87..88       }] ~ ~ ~ clone   999 -52 -2    999 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=89..90       }] ~ ~ ~ clone   998 -52 -2    998 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=91..92       }] ~ ~ ~ clone   1006 -52 -2    1006 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=93       }] ~ ~ ~ clone   1000 -49 -2    1000 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=94..95       }] ~ ~ ~ clone   997 -55 -2    997 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=96..97       }] ~ ~ ~ clone   998 -55 -2    998 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=5..10,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=1..9       }] ~ ~ ~ clone   1001 -55 -2    1001 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=10..23       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=24..25       }] ~ ~ ~ clone   1006 -49 -2    1006 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=26..27       }] ~ ~ ~ clone   1004 -49 -2    1004 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=28..32       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=33..36       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=37..41       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=42..46       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=47..50       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=51..54       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=55..58       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=59       }] ~ ~ ~ clone   1005 -49 -2    1005 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=60..62       }] ~ ~ ~ clone   997 -49 -2    997 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=63..65       }] ~ ~ ~ clone   999 -55 -2    999 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=66       }] ~ ~ ~ clone   1003 -49 -2    1003 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=67..69       }] ~ ~ ~ clone   1001 -49 -2    1001 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=70..72       }] ~ ~ ~ clone   997 -52 -2    997 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=73..74       }] ~ ~ ~ clone   1000 -52 -2    1000 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=75..77       }] ~ ~ ~ clone   999 -52 -2    999 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=78..80       }] ~ ~ ~ clone   998 -52 -2    998 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=81..83       }] ~ ~ ~ clone   1006 -52 -2    1006 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=84       }] ~ ~ ~ clone   1005 -52 -2    1005 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=85..87       }] ~ ~ ~ clone   1000 -49 -2    1000 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=88..91       }] ~ ~ ~ clone   997 -55 -2    997 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=92..95       }] ~ ~ ~ clone   998 -55 -2    998 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=96       }] ~ ~ ~ clone   998 -49 -2    998 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=97       }] ~ ~ ~ clone   1004 -52 -2    1004 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=11..15,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=1..5       }] ~ ~ ~ clone   1001 -55 -2    1001 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=6..15       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=16..20       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=21..25       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=26..32       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=33..37       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=38..42       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=43..47       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=48..52       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=53       }] ~ ~ ~ clone   1005 -49 -2    1005 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=54..56       }] ~ ~ ~ clone   997 -49 -2    997 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=57..60       }] ~ ~ ~ clone   999 -55 -2    999 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=61       }] ~ ~ ~ clone   1003 -49 -2    1003 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=62..65       }] ~ ~ ~ clone   1001 -49 -2    1001 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=66..69       }] ~ ~ ~ clone   997 -52 -2    997 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=70..72       }] ~ ~ ~ clone   1000 -52 -2    1000 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=73..75       }] ~ ~ ~ clone   999 -52 -2    999 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=76..78       }] ~ ~ ~ clone   998 -52 -2    998 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=79..81       }] ~ ~ ~ clone   1006 -52 -2    1006 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=82..83       }] ~ ~ ~ clone   1005 -52 -2    1005 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=84..86       }] ~ ~ ~ clone   1000 -49 -2    1000 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=87..90       }] ~ ~ ~ clone   997 -55 -2    997 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=91..94       }] ~ ~ ~ clone   998 -55 -2    998 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=95       }] ~ ~ ~ clone   998 -49 -2    998 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=96       }] ~ ~ ~ clone   1004 -52 -2    1004 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=97       }] ~ ~ ~ clone   999 -49 -2    999 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=16..20,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=1..5       }] ~ ~ ~ clone   1004 -55 -2    1004 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=6..10       }] ~ ~ ~ clone   1005 -55 -2    1005 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=11..15       }] ~ ~ ~ clone   1002 -55 -2    1002 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=16..24       }] ~ ~ ~ clone   1000 -55 -2    1000 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=25..29       }] ~ ~ ~ clone   1003 -55 -2    1003 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=30..34       }] ~ ~ ~ clone   1003 -52 -2    1003 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=35..39       }] ~ ~ ~ clone   1002 -52 -2    1002 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=40..44       }] ~ ~ ~ clone   1001 -52 -2    1001 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=45       }] ~ ~ ~ clone   1005 -49 -2    1005 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=46..48       }] ~ ~ ~ clone   997 -49 -2    997 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=49..53       }] ~ ~ ~ clone   999 -55 -2    999 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=54       }] ~ ~ ~ clone   1003 -49 -2    1003 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=55..59       }] ~ ~ ~ clone   1001 -49 -2    1001 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=60..64       }] ~ ~ ~ clone   997 -52 -2    997 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=65..67       }] ~ ~ ~ clone   1000 -52 -2    1000 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=68..70       }] ~ ~ ~ clone   999 -52 -2    999 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=71..73       }] ~ ~ ~ clone   998 -52 -2    998 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=74..76       }] ~ ~ ~ clone   1006 -52 -2    1006 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=77..78       }] ~ ~ ~ clone   1005 -52 -2    1005 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=79..81       }] ~ ~ ~ clone   1000 -49 -2    1000 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=82..85       }] ~ ~ ~ clone   997 -55 -2    997 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=86..89       }] ~ ~ ~ clone   998 -55 -2    998 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=90..91       }] ~ ~ ~ clone   998 -49 -2    998 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=92..93       }] ~ ~ ~ clone   1004 -52 -2    1004 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=94..97       }] ~ ~ ~ clone   999 -49 -2    999 -49 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=98       }] ~ ~ ~ clone   996 -55 -2    996 -55 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=99       }] ~ ~ ~ clone   996 -52 -2    996 -52 -2  1006 -55 -1  replace move
execute @e[tag=conditional,scores={PHASE=21..1000,CHEST_STEP=4,RAND_ITEM=100       }] ~ ~ ~ clone   996 -49 -2    996 -49 -2  1006 -55 -1  replace move

#step 5: move chest to final location
execute @e[tag=conditional,scores={CHEST_STEP=5}] ~ ~ ~ clone 1006 -55 -1 1006 -55 -1 996 -55 -1 replace move

#step 6: chest is complete 
#anything to do here? Maybe not?

################################
## UPDATE VARIABLES (STEP LOGIC)
################################
execute @e[tag=conditional,scores={CHEST_STEP=4}] ~ ~ ~ scoreboard players remove @e[tag=conditional] CHEST_ITEMS 1

execute @e[tag=conditional,scores={CHEST_STEP_INIT=0,IS_CHEST=0}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 1
execute @e[tag=conditional,scores={CHEST_STEP_INIT=0,IS_CHEST=0}] ~ ~ ~ setblock 996 -55 -1 cobblestone
execute @e[tag=conditional,scores={CHEST_STEP_INIT=0,IS_CHEST=0}] ~ ~ ~ scoreboard players set @e[tag=conditional] IS_CHEST 1
execute @e[tag=conditional,scores={CHEST_STEP_INIT=1}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 2
execute @e[tag=conditional,scores={CHEST_STEP_INIT=2}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 3
execute @e[tag=conditional,scores={CHEST_STEP_INIT=3}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 4
execute @e[tag=conditional,scores={CHEST_STEP_INIT=4,CHEST_ITEMS=0}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 5
execute @e[tag=conditional,scores={CHEST_STEP_INIT=4,CHEST_ITEMS=1..1000}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 3
execute @e[tag=conditional,scores={CHEST_STEP_INIT=5}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 6
execute @e[tag=conditional,scores={CHEST_STEP_INIT=6}] ~ ~ ~ scoreboard players set @e[tag=conditional] CHEST_STEP 0




