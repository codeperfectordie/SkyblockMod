

#clone random chest 
scoreboard players random @e[tag=conditional] RAND_CHEST 1 8


execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=1 }] ~ ~ ~ clone      996  -55  4        996  -55  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=2 }] ~ ~ ~ clone      996  -54  4        996  -54  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=3 }] ~ ~ ~ clone      996  -53  4        996  -53  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=4 }] ~ ~ ~ clone      996  -52  4        996  -52  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=5 }] ~ ~ ~ clone      996  -51  4        996  -51  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=6 }] ~ ~ ~ clone      996  -50  4        996  -50  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=7 }] ~ ~ ~ clone      996  -49  4        996  -49  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=8 }] ~ ~ ~ clone      996  -48  4        996  -48  4       0 150 0      replace normal


execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=1 }] ~ ~ ~ clone      996  -55  4        996  -55  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=2 }] ~ ~ ~ clone      996  -54  4        996  -54  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=3 }] ~ ~ ~ clone      996  -53  4        996  -53  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=4 }] ~ ~ ~ clone      996  -52  4        996  -52  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=5 }] ~ ~ ~ clone      996  -51  4        996  -51  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=6 }] ~ ~ ~ clone      996  -50  4        996  -50  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=7 }] ~ ~ ~ clone      996  -49  4        996  -49  4       0 150 0      replace normal
execute @e[tag=conditional,scores={PHASE=0..2,RAND_CHEST=8 }] ~ ~ ~ clone      996  -48  4        996  -48  4       0 150 0      replace normal


#execute @e[tag=conditional,scores={TICS_05_SEC=3 }] ~ ~ ~ clone 996  -55  1  996 -55  1 1006 -55 -2 replace move
#execute @e[tag=conditional,scores={IS_CHEST=0,TICS_05_SEC=1 }] ~ ~ ~ setblock 996 -55 1 chest 1 keep
#execute @e[tag=conditional,scores={IS_CHEST=0,TICS_05_SEC=3 }] ~ ~ ~ clone 996  -55  1  996 -55  1 1006 -55 -2 replace move
#execute @e[tag=conditional,scores={IS_CHEST=0,TICS_05_SEC=5 }] ~ ~ ~ clone 1006 -55 -2 1006 -55 -2 1004 -55 -2 replace move
#execute @e[tag=conditional,scores={IS_CHEST=0,TICS_05_SEC=7 }] ~ ~ ~ clone 1004 -55 -2 1004 -55 -2 1002 -55 -2 replace move
#execute @e[tag=conditional,scores={IS_CHEST=0,TICS_05_SEC=9 }] ~ ~ ~ clone 1002 -55 -2 1002 -55 -2 1006 -55  1 replace move
