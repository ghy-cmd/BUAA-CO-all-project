addi	$1,$0,84
sw		$1,0($0)
addi	$1,$0,64
sw		$1,4($0)
addi	$1,$0,100
sw		$1,8($0)
addi	$1,$0,24
sw		$1,12($0)
addi	$1,$0,28
sw		$1,16($0)
addi	$1,$0,36
sw		$1,20($0)
addi	$1,$0,88
sw		$1,24($0)
addi	$1,$0,4
sw		$1,28($0)
addi	$1,$0,192
sw		$1,32($0)
addi	$1,$0,156
sw		$1,36($0)
addi	$1,$0,76
sw		$1,40($0)
addi	$1,$0,144
sw		$1,44($0)
addi	$1,$0,128
sw		$1,48($0)
addi	$1,$0,80
sw		$1,52($0)
addi	$1,$0,16
sw		$1,56($0)
addi	$1,$0,68
sw		$1,60($0)
addi	$1,$0,116
sw		$1,64($0)
addi	$1,$0,60
sw		$1,68($0)
addi	$1,$0,52
sw		$1,72($0)
addi	$1,$0,40
sw		$1,76($0)
addi	$1,$0,72
sw		$1,80($0)
addi	$1,$0,140
sw		$1,84($0)
addi	$1,$0,196
sw		$1,88($0)
addi	$1,$0,56
sw		$1,92($0)
addi	$1,$0,20
sw		$1,96($0)
addi	$1,$0,200
sw		$1,100($0)
addi	$1,$0,152
sw		$1,104($0)
addi	$1,$0,104
sw		$1,108($0)
addi	$1,$0,96
sw		$1,112($0)
addi	$1,$0,136
sw		$1,116($0)
addi	$1,$0,188
sw		$1,120($0)
addi	$1,$0,132
sw		$1,124($0)
addi	$1,$0,184
sw		$1,128($0)
addi	$1,$0,180
sw		$1,132($0)
addi	$1,$0,12
sw		$1,136($0)
addi	$1,$0,160
sw		$1,140($0)
addi	$1,$0,48
sw		$1,144($0)
addi	$1,$0,172
sw		$1,148($0)
addi	$1,$0,8
sw		$1,152($0)
addi	$1,$0,32
sw		$1,156($0)
addi	$1,$0,108
sw		$1,160($0)
addi	$1,$0,148
sw		$1,164($0)
addi	$1,$0,112
sw		$1,168($0)
addi	$1,$0,120
sw		$1,172($0)
addi	$1,$0,92
sw		$1,176($0)
addi	$1,$0,44
sw		$1,180($0)
addi	$1,$0,124
sw		$1,184($0)
addi	$1,$0,176
sw		$1,188($0)
addi	$1,$0,168
sw		$1,192($0)
addi	$1,$0,164
sw		$1,196($0)

addi	$0,$0,252
addi	$1,$0,252
addi	$2,$0,252
addi	$3,$0,252
addi	$4,$0,252
addi	$5,$0,252
addi	$6,$0,252
addi	$7,$0,252
addi	$8,$0,252
addi	$9,$0,252
addi	$10,$0,252
addi	$11,$0,252
addi	$12,$0,252
addi	$13,$0,252
addi	$14,$0,252
addi	$15,$0,252
addi	$16,$0,252
addi	$17,$0,252
addi	$18,$0,252
addi	$19,$0,252
addi	$20,$0,252
addi	$21,$0,252
addi	$22,$0,252
addi	$23,$0,252
addi	$24,$0,252
addi	$25,$0,252
addi	$26,$0,252
addi	$27,$0,252
addi	$28,$0,252
addi	$29,$0,252
addi	$30,$0,252
addi	$31,$0,252

lw		$24,-248($24)
lui		$24,3
srlv	$24,$24,$24
beq		$24,$0,TAG_0
addiu	$24,$0,1
addiu	$0,$24,1
TAG_0:
lb		$14,-192($3)
lui		$14,0
srav	$3,$3,$14
bne		$14,$14,TAG_1
addiu	$14,$14,1
addiu	$14,$14,1
TAG_1:
lbu		$4,54($14)
lui		$14,5
slt		$4,$14,$14
beq		$4,$1,TAG_2
addiu	$4,$1,1
addiu	$1,$4,1
TAG_2:
lh		$19,-240($19)
lui		$19,4
sltu	$0,$19,$19
bne		$0,$0,TAG_3
addiu	$0,$0,1
addiu	$0,$0,1
TAG_3:
lhu		$25,-192($25)
lui		$25,3
sub		$25,$25,$25
bgtz	$25,TAG_4
addiu	$25,$25,1
addiu	$25,$25,1
TAG_4:
lw		$5,-228($5)
lui		$14,4
subu	$5,$14,$5
bgez	$14,TAG_5
addiu	$14,$14,1
addiu	$14,$14,1
TAG_5:
lb		$14,16361($14)
lui		$14,4
xor		$6,$6,$6
bltz	$14,TAG_6
addiu	$14,$14,1
addiu	$14,$14,1
TAG_6:
addi	$1,$0,124
mfc0	$1,$12
addi	$1,$0,100
mfc0	$1,$13
addi	$1,$0,120
mfc0	$1,$14
addi	$6,$0,168
lbu		$0,31721($19)
lui		$0,3
add		$19,$0,$0
blez	$0,TAG_7
addiu	$0,$0,1
addiu	$0,$0,1
TAG_7:
addi	$1,$0,208
mfc0	$1,$12
addi	$1,$0,72
mfc0	$1,$13
addi	$1,$0,76
mfc0	$1,$14
addi	$19,$0,114
lh		$26,-120($26)
lui		$26,1
addu	$26,$26,$26
bgtz	$26,TAG_8
addiu	$26,$26,1
addiu	$26,$26,1
TAG_8:
lhu		$7,-180($7)
lui		$14,2
and		$7,$7,$14
bgez	$14,TAG_9
addiu	$14,$14,1
addiu	$14,$14,1
TAG_9:
addi	$7,$0,52
lw		$8,-164($8)
lui		$14,6
nor		$8,$14,$14
bltz	$14,TAG_10
addiu	$14,$14,1
addiu	$14,$14,1
TAG_10:
lb		$27,108($0)
lui		$27,1
or		$0,$0,$27
blez	$27,TAG_11
addiu	$27,$27,1
addiu	$27,$27,1
TAG_11:
lbu		$29,-128($29)
lui		$29,3
sltiu	$29,$29,-4
sllv	$29,$29,$29
lh		$14,5990($14)
lui		$14,7
xori	$13,$14,39
srlv	$14,$13,$14
addi	$1,$0,220
mfc0	$1,$12
addi	$1,$0,68
mfc0	$1,$13
addi	$1,$0,72
mfc0	$1,$14
lhu		$14,1960($14)
lui		$14,5
addi	$14,$14,-217
srav	$14,$14,$14
addi	$1,$0,244
mfc0	$1,$12
addi	$1,$0,28
mfc0	$1,$13
addi	$1,$0,224
mfc0	$1,$14
lw		$1,88($0)
lui		$1,2
addiu	$0,$0,-184
slt		$1,$0,$1
lb		$30,-236($30)
lui		$30,4
andi	$30,$30,179
ori		$30,$30,39
lbu		$15,-200($15)
lui		$14,3
slti	$14,$14,-7
sltiu	$15,$14,-6
addi	$14,$0,160
lh		$16,-116($16)
lui		$14,5
xori	$14,$14,251
addi	$16,$14,-176
lhu		$0,63($1)
lui		$1,7
addiu	$1,$0,163
andi	$0,$1,223
lw		$1,-111($1)
lui		$1,2
ori		$1,$1,225
sra		$1,$1,2
lb		$14,-224($17)
lui		$14,4
slti	$17,$17,5
sll		$14,$14,2
addi	$17,$0,143
lbu		$14,-192($18)
lui		$14,1
sltiu	$14,$18,-1
srl		$18,$18,1
lh		$0,-140($10)
lui		$0,5
xori	$10,$0,124
sra		$10,$0,2
addi	$10,$0,91
lhu		$2,-120($2)
lui		$2,2
addi	$2,$2,254
lw		$2,13051($2)
addi	$1,$0,72
mfc0	$1,$12
addi	$1,$0,84
mfc0	$1,$13
addi	$1,$0,152
mfc0	$1,$14
lb		$14,-114($19)
lui		$14,1
addiu	$19,$19,58
lbu		$19,-100($19)
lh		$20,-184($20)
lui		$14,7
andi	$20,$14,22
lhu		$20,9624($14)
addi	$1,$0,100
mfc0	$1,$12
addi	$1,$0,104
mfc0	$1,$13
addi	$1,$0,248
mfc0	$1,$14
addi	$20,$0,201
lw		$0,-177($20)
lui		$0,1
ori		$0,$20,30
lb		$0,0($0)
lbu		$3,-200($3)
lui		$3,6
slti	$3,$3,-5
sh		$3,348($3)
addi	$3,$0,102
lh		$14,18270($14)
lui		$14,4
sltiu	$21,$21,-1
sw		$14,431($21)
addi	$1,$0,80
mfc0	$1,$12
addi	$1,$0,36
mfc0	$1,$13
addi	$1,$0,32
mfc0	$1,$14
lhu		$22,-228($22)
lui		$14,2
xori	$22,$14,146
sb		$14,11859($14)
addi	$1,$0,176
mfc0	$1,$12
addi	$1,$0,220
mfc0	$1,$13
addi	$1,$0,8
mfc0	$1,$14
lw		$0,15953($13)
lui		$0,0
addi	$0,$0,-22
sh		$13,356($0)
addi	$1,$0,120
mfc0	$1,$12
addi	$1,$0,168
mfc0	$1,$13
addi	$1,$0,112
mfc0	$1,$14
lb		$4,-197($4)
lui		$4,7
addiu	$4,$4,116
mtlo	$4
mflo	$1
mfhi	$2
addi	$2,$0,114
lbu		$23,-180($23)
lui		$14,7
andi	$23,$14,72
mtc0	$23,$12
mflo	$1
mfhi	$2
addi	$2,$0,46
addi	$23,$0,73
lh		$24,27($24)
lui		$14,6
ori		$14,$14,214
div		$14,$24
mflo	$1
mfhi	$2
lhu		$6,68($0)
lui		$0,4
slti	$0,$6,6
divu	$0,$27
mflo	$1
mfhi	$2
addi	$1,$0,3
addi	$2,$0,166
lw		$5,18856($5)
lui		$5,4
sltiu	$5,$5,-3
beq		$5,$5,TAG_12
addiu	$5,$5,1
addiu	$5,$5,1
TAG_12:
addi	$1,$0,156
mfc0	$1,$12
addi	$1,$0,112
mfc0	$1,$13
addi	$1,$0,8
mfc0	$1,$14
lb		$25,31937($14)
lui		$14,7
xori	$14,$14,212
bne		$14,$25,TAG_13
addiu	$14,$25,1
addiu	$25,$14,1
TAG_13:
addi	$1,$0,188
mfc0	$1,$12
addi	$1,$0,232
mfc0	$1,$13
addi	$1,$0,228
mfc0	$1,$14
lbu		$26,125($14)
lui		$14,3
addi	$14,$26,194
beq		$14,$14,TAG_14
addiu	$14,$14,1
addiu	$14,$14,1
TAG_14:
lh		$25,54($25)
lui		$0,4
addiu	$25,$25,-61
bne		$25,$0,TAG_15
addiu	$25,$0,1
addiu	$0,$25,1
TAG_15:
lhu		$6,8($6)
lui		$6,2
andi	$6,$6,5
beq		$6,$1,TAG_16
addiu	$6,$1,1
addiu	$1,$6,1
TAG_16:
lw		$27,5115($27)
lui		$14,6
ori		$27,$27,243
bne		$14,$14,TAG_17
addiu	$14,$14,1
addiu	$14,$14,1
TAG_17:
addi	$1,$0,64
mfc0	$1,$12
addi	$1,$0,132
mfc0	$1,$13
addi	$1,$0,144
mfc0	$1,$14
lb		$28,-140($28)
lui		$14,1
slti	$14,$14,7
beq		$14,$1,TAG_18
addiu	$14,$1,1
addiu	$1,$14,1
TAG_18:
lbu		$7,92($0)
lui		$0,6
sltiu	$0,$7,5
bne		$7,$7,TAG_19
addiu	$7,$7,1
addiu	$7,$7,1
TAG_19:
lh		$7,-6($7)
lui		$7,4
xori	$7,$7,106
bgtz	$7,TAG_20
addiu	$7,$7,1
addiu	$7,$7,1
TAG_20:
lhu		$14,-125($14)
lui		$14,3
addi	$29,$14,-229
bgez	$14,TAG_21
addiu	$14,$14,1
addiu	$14,$14,1
TAG_21:
lw		$30,32115($14)
lui		$14,2
addiu	$30,$14,-248
bltz	$14,TAG_22
addiu	$14,$14,1
addiu	$14,$14,1
TAG_22:
addi	$1,$0,36
mfc0	$1,$12
addi	$1,$0,164
mfc0	$1,$13
addi	$1,$0,28
mfc0	$1,$14
lb		$0,25($10)
lui		$10,5
andi	$10,$0,240
blez	$10,TAG_23
addiu	$10,$10,1
addiu	$10,$10,1
TAG_23:
lbu		$8,29621($8)
lui		$8,1
ori		$8,$8,18
bgtz	$8,TAG_24
addiu	$8,$8,1
addiu	$8,$8,1
TAG_24:
addi	$1,$0,0
mfc0	$1,$12
addi	$1,$0,84
mfc0	$1,$13
addi	$1,$0,188
mfc0	$1,$14
lh		$1,-148($1)
lui		$15,0
slti	$15,$15,7
bgez	$15,TAG_25
addiu	$15,$15,1
addiu	$15,$15,1
TAG_25:
lhu		$15,-62($2)
lui		$15,3
sltiu	$2,$2,0
bltz	$15,TAG_26
addiu	$15,$15,1
addiu	$15,$15,1
TAG_26:
addi	$2,$0,47
lw		$0,-128($12)
lui		$12,5
xori	$12,$12,131
blez	$12,TAG_27
addiu	$12,$12,1
addiu	$12,$12,1
TAG_27:
lb		$11,-180($11)
lui		$11,5
sll		$11,$11,2
sltu	$11,$11,$11
addi	$11,$0,223
lbu		$7,13623($7)
lui		$15,0
srl		$15,$7,1
sub		$7,$7,$15
addi	$1,$0,36
mfc0	$1,$12
addi	$1,$0,112
mfc0	$1,$13
addi	$1,$0,120
mfc0	$1,$14
lh		$8,11498($15)
lui		$15,7
sra		$8,$15,1
subu	$15,$8,$15
addi	$1,$0,44
mfc0	$1,$12
addi	$1,$0,96
mfc0	$1,$13
addi	$1,$0,100
mfc0	$1,$14
lhu		$3,-86($3)
lui		$3,7
sll		$0,$3,2
xor		$3,$0,$3
lw		$12,25876($12)
lui		$12,7
srl		$12,$12,1
addi	$12,$12,-44
addi	$1,$0,88
mfc0	$1,$12
addi	$1,$0,160
mfc0	$1,$13
addi	$1,$0,216
mfc0	$1,$14
lb		$9,-184($9)
lui		$15,2
sra		$15,$15,1
addiu	$15,$15,238
lbu		$15,11492($15)
lui		$15,7
sll		$10,$10,2
andi	$10,$10,41
addi	$1,$0,204
mfc0	$1,$12
addi	$1,$0,28
mfc0	$1,$13
addi	$1,$0,136
mfc0	$1,$14
addi	$10,$0,64
lh		$29,16559($29)
lui		$29,2
srl		$29,$0,1
ori		$0,$29,210
addi	$1,$0,104
mfc0	$1,$12
addi	$1,$0,232
mfc0	$1,$13
addi	$1,$0,112
mfc0	$1,$14
addi	$29,$0,160
lhu		$13,3927($13)
lui		$13,1
sra		$13,$13,1
sll		$13,$13,2
addi	$1,$0,244
mfc0	$1,$12
addi	$1,$0,128
mfc0	$1,$13
addi	$1,$0,196
mfc0	$1,$14
lw		$11,-83($11)
lui		$15,1
srl		$15,$15,2
sra		$15,$15,2
lb		$12,1300($12)
lui		$15,5
sll		$12,$12,1
srl		$15,$12,1
addi	$1,$0,112
mfc0	$1,$12
addi	$1,$0,244
mfc0	$1,$13
addi	$1,$0,168
mfc0	$1,$14
lbu		$0,17535($13)
lui		$13,7
sra		$0,$0,1
sll		$13,$0,1
addi	$1,$0,196
mfc0	$1,$12
addi	$1,$0,252
mfc0	$1,$13
addi	$1,$0,4
mfc0	$1,$14
addi	$13,$0,42
lh		$14,22184($14)
lui		$14,2
srl		$14,$14,1
lhu		$14,11138($14)
addi	$1,$0,176
mfc0	$1,$12
addi	$1,$0,52
mfc0	$1,$13
addi	$1,$0,244
mfc0	$1,$14
lw		$15,-26($13)
lui		$15,2
sra		$15,$15,2
lb		$15,94($13)
lbu		$15,18184($14)
lui		$15,0
sll		$14,$15,2
lh		$14,80($15)
addi	$1,$0,44
mfc0	$1,$12
addi	$1,$0,204
mfc0	$1,$13
addi	$1,$0,8
mfc0	$1,$14
addi	$15,$0,239
lhu		$29,-124($29)
lui		$29,2
srl		$29,$0,1
lw		$0,32($29)
addi	$29,$0,90
lb		$15,-239($15)
lui		$15,2
sra		$15,$15,2
sw		$15,-32296($15)
lbu		$15,-32640($15)
lui		$15,0
sll		$15,$15,2
sb		$15,380($15)
addi	$15,$0,14
lh		$15,16169($16)
lui		$15,4
srl		$16,$16,1
sh		$15,32159($15)
addi	$1,$0,0
mfc0	$1,$12
addi	$1,$0,196
mfc0	$1,$13
addi	$1,$0,92
mfc0	$1,$14
lhu		$2,101($2)
lui		$2,3
sra		$2,$2,2
sw		$0,7627($2)
addi	$1,$0,24
mfc0	$1,$12
addi	$1,$0,128
mfc0	$1,$13
addi	$1,$0,144
mfc0	$1,$14
lw		$16,3403($16)
lui		$16,5
sll		$16,$16,2
mult	$16,$16
mflo	$1
mfhi	$2
addi	$1,$0,176
mfc0	$1,$12
addi	$1,$0,116
mfc0	$1,$13
addi	$1,$0,124
mfc0	$1,$14
lb		$17,-67($17)
lui		$15,1
srl		$15,$17,1
multu	$17,$17
mflo	$1
mfhi	$2
addi	$2,$0,64
lbu		$18,2($18)
lui		$15,4
sra		$15,$18,2
mthi	$15
mflo	$1
mfhi	$2
lh		$0,18841($7)
lui		$0,4
sll		$0,$0,2
mtlo	$7
mflo	$1
mfhi	$2
addi	$1,$0,204
mfc0	$1,$12
addi	$1,$0,80
mfc0	$1,$13
addi	$1,$0,168
mfc0	$1,$14
lhu		$17,36($17)
lui		$17,1
srl		$17,$17,1
beq		$17,$17,TAG_28
addiu	$17,$17,1
addiu	$17,$17,1
TAG_28:
lw		$19,6($15)
lui		$15,7
sra		$19,$15,2
bne		$15,$19,TAG_29
addiu	$15,$19,1
addiu	$19,$15,1
TAG_29:
lb		$15,-197($20)
lui		$15,2
sll		$20,$20,2
beq		$15,$15,TAG_30
addiu	$15,$15,1
addiu	$15,$15,1
TAG_30:
lbu		$27,28($0)
lui		$0,0
srl		$27,$0,2
bne		$0,$1,TAG_31
addiu	$0,$1,1
addiu	$1,$0,1
TAG_31:
addi	$27,$0,4
lh		$18,-28($18)
lui		$18,0
sra		$18,$18,1
beq		$18,$1,TAG_32
addiu	$18,$1,1
addiu	$1,$18,1
TAG_32:
lhu		$15,15($21)
lui		$15,6
sll		$15,$15,1
bne		$21,$21,TAG_33
addiu	$21,$21,1
addiu	$21,$21,1
TAG_33:
lw		$15,6355($22)
lui		$15,3
srl		$22,$22,2
beq		$22,$15,TAG_34
addiu	$22,$15,1
addiu	$15,$22,1
TAG_34:
addi	$1,$0,24
mfc0	$1,$12
addi	$1,$0,60
mfc0	$1,$13
addi	$1,$0,72
mfc0	$1,$14
lb		$11,-8($11)
lui		$11,0
sra		$11,$11,2
bne		$0,$0,TAG_35
addiu	$0,$0,1
addiu	$0,$0,1
TAG_35:
addi	$11,$0,112
lbu		$19,13368($19)
lui		$19,1
sll		$19,$19,1
bgtz	$19,TAG_36
addiu	$19,$19,1
addiu	$19,$19,1
TAG_36:
addi	$1,$0,48
mfc0	$1,$12
addi	$1,$0,16
mfc0	$1,$13
addi	$1,$0,80
mfc0	$1,$14
lh		$23,32201($15)
lui		$15,6
srl		$23,$23,2
bgez	$15,TAG_37
addiu	$15,$15,1
addiu	$15,$15,1
TAG_37:
addi	$1,$0,196
mfc0	$1,$12
addi	$1,$0,220
mfc0	$1,$13
addi	$1,$0,148
mfc0	$1,$14
lhu		$24,64($24)
lui		$15,1
sra		$24,$15,2
bltz	$15,TAG_38
addiu	$15,$15,1
addiu	$15,$15,1
TAG_38:
lw		$0,109($21)
lui		$21,4
sll		$0,$21,1
blez	$21,TAG_39
addiu	$21,$21,1
addiu	$21,$21,1
TAG_39:
lb		$20,-716($20)
lui		$20,4
srl		$20,$20,2
bgtz	$20,TAG_40
addiu	$20,$20,1
addiu	$20,$20,1
TAG_40:
lbu		$15,31712($15)
lui		$15,6
sra		$15,$25,1
bgez	$15,TAG_41
addiu	$15,$15,1
addiu	$15,$15,1
TAG_41:
addi	$1,$0,248
mfc0	$1,$12
addi	$1,$0,80
mfc0	$1,$13
addi	$1,$0,8
mfc0	$1,$14
lh		$15,-100($26)
lui		$15,2
sll		$15,$26,1
bltz	$15,TAG_42
addiu	$15,$15,1
addiu	$15,$15,1
TAG_42:
lhu		$28,80($0)
lui		$28,7
srl		$0,$0,1
blez	$28,TAG_43
addiu	$28,$28,1
addiu	$28,$28,1
TAG_43:
lw		$23,10($23)
lui		$23,3
lb		$23,21614($23)
add		$23,$23,$23
addi	$1,$0,180
mfc0	$1,$12
addi	$1,$0,248
mfc0	$1,$13
addi	$1,$0,64
mfc0	$1,$14
lbu		$16,6588($16)
lui		$16,0
lh		$16,52($16)
addu	$1,$16,$1
addi	$1,$0,216
mfc0	$1,$12
addi	$1,$0,44
mfc0	$1,$13
addi	$1,$0,120
mfc0	$1,$14
lhu		$16,34($2)
lui		$16,4
lw		$2,4752($16)
and		$16,$16,$2
addi	$1,$0,64
mfc0	$1,$12
addi	$1,$0,96
mfc0	$1,$13
addi	$1,$0,84
mfc0	$1,$14
addi	$16,$0,205
lb		$6,36($0)
lui		$6,0
lbu		$0,24($0)
nor		$6,$6,$6
lh		$24,-16320($24)
lui		$24,7
lhu		$24,13345($24)
slti	$24,$24,-4
addi	$1,$0,228
mfc0	$1,$12
addi	$1,$0,88
mfc0	$1,$13
addi	$1,$0,0
mfc0	$1,$14
addi	$1,$0,244
addi	$24,$0,116
lw		$3,3174($3)
lui		$16,3
lb		$16,406($3)
sltiu	$16,$16,3
addi	$1,$0,12
mfc0	$1,$12
addi	$1,$0,124
mfc0	$1,$13
addi	$1,$0,84
mfc0	$1,$14
addi	$16,$0,3
lbu		$16,17($16)
lui		$16,3
lh		$16,30216($4)
xori	$16,$4,212
addi	$1,$0,108
mfc0	$1,$12
addi	$1,$0,204
mfc0	$1,$13
addi	$1,$0,72
mfc0	$1,$14
lhu		$0,124($0)
lui		$23,0
lw		$23,56($23)
addi	$0,$23,-3
lb		$25,155($25)
lui		$25,4
lbu		$25,5658($25)
sra		$25,$25,1
.ktext 0x4180

_entry10:
	sw		$k0,0x2ffc($0)
	mfc0	$k0,$12
	mfc0	$k0,$13
	mfc0	$k0,$14
	addiu	$k0,$k0,4
	mtc0	$k0,$14
	lw		$k0,0x2ffc($0)
	eret
	mfc0	$k0,$14
	mfc0	$k0,$14
	mfc0	$k0,$14
#end