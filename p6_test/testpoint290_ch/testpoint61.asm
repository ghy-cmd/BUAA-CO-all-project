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

mflo	$18
divu	$18,$19
lui		$18,3
lhu		$18,76($18)
mflo	$1
mfhi	$2
addi	$1,$0,159
addi	$2,$0,27
mfhi	$0
mult	$30,$30
lui		$0,0
lw		$30,-136($30)
mflo	$1
mfhi	$2
addi	$2,$0,162
mflo	$3
multu	$3,$3
lui		$3,2
sb		$3,280($3)
mflo	$1
mfhi	$2
addi	$2,$0,190
mfhi	$18
mthi	$18
lui		$18,5
sh		$28,292($18)
mflo	$1
mfhi	$2
addi	$2,$0,193
mflo	$28
mtlo	$28
lui		$28,3
sw		$28,292($28)
mflo	$1
mfhi	$2
addi	$2,$0,102
mfhi	$31
div		$31,$7
jal		TAG_0
lb		$31,-12944($31)
addi	$1,$1,1
TAG_0:
mflo	$1
mfhi	$2
addi	$1,$0,255
addi	$2,$0,242
mflo	$12
divu	$12,$31
jal		TAG_1
lbu		$31,140($12)
addi	$1,$1,1
TAG_1:
mflo	$1
mfhi	$2
addi	$1,$0,202
addi	$2,$0,80
addi	$12,$0,223
mfhi	$0
mult	$0,$0
jal		TAG_2
lh		$0,8($0)
addi	$1,$1,1
TAG_2:
mflo	$1
mfhi	$2
addi	$1,$0,158
addi	$2,$0,46
mflo	$31
multu	$31,$31
jal		TAG_3
sb		$31,-12620($31)
addi	$1,$1,1
TAG_3:
mflo	$1
mfhi	$2
addi	$1,$0,95
addi	$2,$0,203
mfhi	$31
mthi	$31
jal		TAG_4
sh		$12,-12748($31)
addi	$1,$1,1
TAG_4:
mflo	$1
mfhi	$2
addi	$1,$0,181
addi	$2,$0,80
mflo	$31
mtlo	$0
jal		TAG_5
sw		$0,-12716($31)
addi	$1,$1,1
TAG_5:
mflo	$1
mfhi	$2
addi	$1,$0,15
addi	$2,$0,182
la		$7,TAG_6
mfhi	$14
div		$14,$4
jalr	$14,$7
lhu		$14,-13084($14)
addi	$1,$1,1
TAG_6:
mflo	$1
mfhi	$2
addi	$1,$0,135
addi	$2,$0,220
la		$7,TAG_7
mflo	$19
divu	$19,$9
jalr	$19,$7
lw		$19,-13164($19)
addi	$1,$1,1
TAG_7:
mflo	$1
mfhi	$2
addi	$1,$0,52
addi	$2,$0,249
la		$7,TAG_8
mfhi	$0
mult	$11,$0
jalr	$0,$7
lb		$0,-136($11)
addi	$1,$1,1
TAG_8:
mflo	$1
mfhi	$2
addi	$1,$0,128
addi	$2,$0,162
la		$7,TAG_9
mflo	$15
multu	$15,$15
jalr	$15,$7
sb		$15,-12844($15)
addi	$1,$1,1
TAG_9:
mflo	$1
mfhi	$2
addi	$1,$0,69
addi	$2,$0,116
la		$7,TAG_10
mfhi	$19
mthi	$19
jalr	$19,$7
sh		$19,216($10)
addi	$1,$1,1
TAG_10:
mflo	$1
mfhi	$2
addi	$1,$0,170
addi	$2,$0,42
la		$7,TAG_11
mflo	$3
mtlo	$0
jalr	$3,$7
sw		$0,-13000($3)
addi	$1,$1,1
TAG_11:
mflo	$1
mfhi	$2
addi	$1,$0,207
addi	$2,$0,21
mfhi	$20
div		$20,$18
nop
lbu		$20,108($20)
mflo	$1
mfhi	$2
addi	$1,$0,163
addi	$2,$0,130
mflo	$19
divu	$19,$15
nop
lh		$15,68($19)
mflo	$1
mfhi	$2
addi	$1,$0,114
addi	$2,$0,63
addi	$19,$0,39
mfhi	$0
mult	$17,$17
nop
lhu		$17,-160($17)
mflo	$1
mfhi	$2
addi	$2,$0,18
mflo	$21
multu	$21,$21
nop
sb		$21,-13932($21)
mflo	$1
mfhi	$2
addi	$2,$0,125
mfhi	$19
mthi	$19
nop
sh		$16,76($16)
mflo	$1
mfhi	$2
addi	$2,$0,70
addi	$19,$0,163
mflo	$0
mtlo	$25
nop
sw		$0,52($25)
mflo	$1
mfhi	$2
addi	$2,$0,169
mfhi	$2
mflo	$2
sltu	$2,$2,$2
lw		$2,68($2)
mflo	$1
mfhi	$2
addi	$2,$0,225
mfhi	$19
mflo	$19
sub		$27,$19,$19
lb		$19,-152($19)
mflo	$1
mfhi	$2
addi	$2,$0,120
addi	$27,$0,72
mfhi	$0
mflo	$0
subu	$26,$0,$0
lbu		$26,152($26)
mflo	$1
mfhi	$2
addi	$2,$0,83
mfhi	$3
mflo	$3
xor		$3,$3,$3
sb		$3,300($3)
mflo	$1
mfhi	$2
addi	$2,$0,146
addi	$3,$0,182
mfhi	$19
mflo	$19
add		$28,$28,$28
sh		$28,312($28)
mflo	$1
mfhi	$2
addi	$2,$0,178
mfhi	$0
mflo	$0
addu	$28,$28,$0
sw		$28,352($0)
mflo	$1
mfhi	$2
addi	$2,$0,96
mfhi	$14
mflo	$14
andi	$14,$14,15
lh		$14,52($14)
mflo	$1
mfhi	$2
addi	$2,$0,238
mfhi	$20
mflo	$20
ori		$20,$9,251
lhu		$20,-100($9)
mflo	$1
mfhi	$2
addi	$2,$0,124
mfhi	$0
mflo	$0
slti	$0,$11,4
lw		$11,-224($11)
mflo	$1
mfhi	$2
addi	$2,$0,183
mfhi	$15
mflo	$15
sltiu	$15,$15,-4
sb		$15,387($15)
mflo	$1
mfhi	$2
addi	$2,$0,80
mfhi	$20
mflo	$20
xori	$10,$20,84
sh		$20,64($20)
mflo	$1
mfhi	$2
addi	$2,$0,17
mfhi	$0
mflo	$0
addi	$0,$0,-26
sw		$18,316($18)
mflo	$1
mfhi	$2
addi	$2,$0,144
mfhi	$26
mflo	$26
sll		$26,$26,1
lb		$26,-440($26)
mflo	$1
mfhi	$2
addi	$2,$0,106
mfhi	$20
mflo	$20
srl		$20,$20,2
lbu		$20,-14316($21)
mflo	$1
mfhi	$2
addi	$2,$0,53
mfhi	$0
mflo	$0
sra		$11,$0,1
lh		$0,128($0)
mflo	$1
mfhi	$2
addi	$2,$0,77
addi	$11,$0,164
mfhi	$27
mflo	$27
sll		$27,$27,2
sb		$27,-600($27)
mflo	$1
mfhi	$2
addi	$2,$0,63
mfhi	$20
mflo	$20
srl		$22,$22,1
sh		$20,186($22)
mflo	$1
mfhi	$2
addi	$2,$0,186
mfhi	$22
mflo	$22
sra		$0,$0,1
sw		$22,336($0)
mflo	$1
mfhi	$2
addi	$2,$0,48
mfhi	$5
mflo	$5
lhu		$5,-204($5)
and		$5,$5,$5
mflo	$1
mfhi	$2
addi	$2,$0,140
mfhi	$20
mflo	$20
lw		$20,-12($30)
nor		$30,$30,$20
mflo	$1
mfhi	$2
addi	$2,$0,248
mfhi	$0
mflo	$0
lb		$0,28($0)
or		$17,$17,$17
mflo	$1
mfhi	$2
addi	$2,$0,214
mfhi	$6
mflo	$6
lbu		$6,-236($6)
addiu	$6,$6,-52
mflo	$1
mfhi	$2
addi	$2,$0,202
mfhi	$21
mflo	$21
lh		$21,-196($21)
andi	$21,$1,207
mflo	$1
mfhi	$2
addi	$2,$0,38
mfhi	$0
mflo	$0
lhu		$0,32($0)
ori		$0,$18,128
mflo	$1
mfhi	$2
addi	$2,$0,120
mfhi	$7
mflo	$7
lw		$7,-236($7)
sll		$7,$7,2
mflo	$1
mfhi	$2
addi	$2,$0,228
mfhi	$21
mflo	$21
lb		$21,-164($21)
srl		$21,$21,1
mflo	$1
mfhi	$2
addi	$2,$0,145
mfhi	$0
mflo	$0
lbu		$14,60($0)
sra		$14,$14,1
mflo	$1
mfhi	$2
addi	$2,$0,182
mfhi	$8
mflo	$8
lh		$8,-192($8)
lhu		$8,32($8)
mflo	$1
mfhi	$2
addi	$2,$0,37
mfhi	$21
mflo	$21
lw		$3,-26($3)
lb		$3,-20($3)
mflo	$1
mfhi	$2
addi	$2,$0,198
mfhi	$0
mflo	$0
lbu		$0,63($15)
lh		$0,75($15)
mflo	$1
mfhi	$2
addi	$2,$0,176
mfhi	$9
mflo	$9
lhu		$9,-100($9)
sb		$9,340($9)
mflo	$1
mfhi	$2
addi	$2,$0,66
mfhi	$21
mflo	$21
lw		$21,-136($21)
sh		$21,204($4)
mflo	$1
mfhi	$2
addi	$2,$0,232
mfhi	$0
mflo	$0
lb		$0,140($0)
sw		$0,356($3)
mflo	$1
mfhi	$2
addi	$2,$0,234
mfhi	$10
mflo	$10
lbu		$10,-236($10)
div		$10,$10
mflo	$1
mfhi	$2
addi	$2,$0,200
mfhi	$21
mflo	$21
lh		$21,8($5)
divu	$21,$21
mflo	$1
mfhi	$2
addi	$2,$0,254
mfhi	$0
mflo	$0
lhu		$9,120($9)
mult	$0,$9
mflo	$1
mfhi	$2
addi	$1,$0,80
addi	$2,$0,205
mfhi	$11
mflo	$11
lw		$11,0($11)
beq		$11,$11,TAG_12
addiu	$11,$11,1
addiu	$11,$11,1
TAG_12:
mflo	$1
mfhi	$2
addi	$1,$0,147
addi	$2,$0,145
mfhi	$21
mflo	$21
lb		$6,-16264($6)
bne		$6,$0,TAG_13
addiu	$6,$0,1
addiu	$0,$6,1
TAG_13:
mflo	$1
mfhi	$2
addi	$1,$0,241
addi	$2,$0,28
addi	$21,$0,2
mfhi	$4
mflo	$4
lbu		$4,80($0)
beq		$0,$0,TAG_14
addiu	$0,$0,1
addiu	$0,$0,1
TAG_14:
mflo	$1
mfhi	$2
addi	$1,$0,55
addi	$2,$0,100
mfhi	$12
mflo	$12
lh		$12,24($12)
beq		$12,$0,TAG_15
addiu	$12,$0,1
addiu	$0,$12,1
TAG_15:
mflo	$1
mfhi	$2
addi	$1,$0,162
addi	$2,$0,46
mfhi	$21
mflo	$21
lhu		$7,-88($7)
bne		$7,$7,TAG_16
addiu	$7,$7,1
addiu	$7,$7,1
TAG_16:
mflo	$1
mfhi	$2
addi	$1,$0,30
addi	$2,$0,98
addi	$21,$0,112
mfhi	$0
mflo	$0
lw		$8,-60($8)
beq		$0,$1,TAG_17
addiu	$0,$1,1
addiu	$1,$0,1
TAG_17:
mflo	$1
mfhi	$2
addi	$1,$0,48
addi	$2,$0,191
mfhi	$13
mflo	$13
lb		$13,128($13)
bgtz	$13,TAG_18
addiu	$13,$13,1
addiu	$13,$13,1
TAG_18:
mflo	$1
mfhi	$2
addi	$1,$0,255
addi	$2,$0,207
mfhi	$21
mflo	$21
lbu		$21,-128($8)
bgez	$21,TAG_19
addiu	$21,$21,1
addiu	$21,$21,1
TAG_19:
mflo	$1
mfhi	$2
addi	$1,$0,118
addi	$2,$0,147
mfhi	$20
mflo	$20
lh		$20,48($0)
bltz	$20,TAG_20
addiu	$20,$20,1
addiu	$20,$20,1
TAG_20:
mflo	$1
mfhi	$2
addi	$1,$0,68
addi	$2,$0,242
mfhi	$14
mflo	$14
lhu		$14,56($14)
bgtz	$14,TAG_21
addiu	$14,$14,1
addiu	$14,$14,1
TAG_21:
mflo	$1
mfhi	$2
addi	$1,$0,71
addi	$2,$0,91
mfhi	$21
mflo	$21
lw		$9,-112($9)
bgez	$21,TAG_22
addiu	$21,$21,1
addiu	$21,$21,1
TAG_22:
mflo	$1
mfhi	$2
addi	$1,$0,88
addi	$2,$0,24
mfhi	$6
mflo	$6
lb		$6,64($0)
bltz	$6,TAG_23
addiu	$6,$6,1
addiu	$6,$6,1
TAG_23:
mflo	$1
mfhi	$2
addi	$1,$0,32
addi	$2,$0,187
mfhi	$20
mflo	$20
multu	$20,$20
lbu		$20,148($20)
mflo	$1
mfhi	$2
addi	$1,$0,39
addi	$2,$0,14
mfhi	$21
mflo	$21
mthi	$21
lh		$21,59($15)
mflo	$1
mfhi	$2
addi	$1,$0,254
addi	$2,$0,187
mfhi	$30
mflo	$30
mtlo	$0
lhu		$0,8($30)
mflo	$1
mfhi	$2
addi	$1,$0,136
addi	$2,$0,120
addi	$30,$0,126
mfhi	$21
mflo	$21
div		$21,$6
sb		$21,404($21)
mflo	$1
mfhi	$2
addi	$1,$0,140
addi	$2,$0,65
addi	$21,$0,214
mfhi	$21
mflo	$21
divu	$16,$16
sh		$16,312($21)
mflo	$1
mfhi	$2
addi	$2,$0,250
addi	$21,$0,151
mfhi	$0
mflo	$0
mult	$0,$18
sw		$18,300($0)
mflo	$1
mfhi	$2
addi	$1,$0,148
addi	$2,$0,123
mfhi	$2
mflo	$2
mfhi	$2
lw		$2,64($2)
mflo	$1
mfhi	$2
addi	$1,$0,33
addi	$2,$0,84
mflo	$21
mfhi	$21
mflo	$21
lb		$27,136($21)
mflo	$1
mfhi	$2
addi	$1,$0,73
addi	$2,$0,241
addi	$21,$0,190
mfhi	$0
mflo	$0
mfhi	$0
lbu		$0,-66($7)
mflo	$1
mfhi	$2
addi	$1,$0,52
addi	$2,$0,62
mflo	$3
mfhi	$3
mfhi	$3
sb		$3,472($3)
mflo	$1
mfhi	$2
addi	$1,$0,97
addi	$2,$0,34
addi	$3,$0,78
mflo	$21
mfhi	$21
mfhi	$21
sh		$21,460($28)
mflo	$1
mfhi	$2
addi	$1,$0,112
addi	$2,$0,19
addi	$21,$0,182
mflo	$3
mfhi	$3
mfhi	$3
sw		$3,324($0)
mflo	$1
mfhi	$2
addi	$1,$0,118
addi	$2,$0,230
addi	$3,$0,91
mflo	$14
mfhi	$14
lui		$14,2
lh		$14,44($14)
mflo	$1
mfhi	$2
addi	$1,$0,88
addi	$2,$0,73
mflo	$22
mfhi	$22
lui		$22,0
lhu		$9,100($9)
mflo	$1
mfhi	$2
addi	$1,$0,155
addi	$2,$0,125
addi	$22,$0,212
mflo	$16
mfhi	$16
lui		$16,4
lw		$0,28($0)
mflo	$1
mfhi	$2
addi	$1,$0,84
addi	$2,$0,232
mflo	$15
mfhi	$15
lui		$15,7
sb		$15,292($15)
mflo	$1
mfhi	$2
addi	$1,$0,235
addi	$2,$0,140
mflo	$22
mfhi	$22
lui		$22,0
sh		$22,312($10)
mflo	$1
mfhi	$2
addi	$1,$0,54
addi	$2,$0,58
addi	$22,$0,99
mflo	$29
mfhi	$29
lui		$29,6
sw		$29,420($29)
mflo	$1
mfhi	$2
addi	$1,$0,216
addi	$2,$0,3
mflo	$31
mfhi	$31
jal		TAG_24
lb		$31,-15732($31)
addi	$1,$1,1
TAG_24:
mflo	$1
mfhi	$2
addi	$1,$0,210
addi	$2,$0,144
mflo	$15
mfhi	$15
jal		TAG_25
lbu		$31,36($15)
addi	$1,$1,1
TAG_25:
mflo	$1
mfhi	$2
addi	$1,$0,79
addi	$2,$0,187
addi	$15,$0,12
mflo	$0
mfhi	$0
jal		TAG_26
lh		$0,-15796($31)
addi	$1,$1,1
TAG_26:
mflo	$1
mfhi	$2
addi	$1,$0,215
addi	$2,$0,194
mflo	$31
mfhi	$31
jal		TAG_27
sb		$31,-15400($31)
addi	$1,$1,1
TAG_27:
mflo	$1
mfhi	$2
addi	$1,$0,223
addi	$2,$0,61
mflo	$31
mfhi	$31
jal		TAG_28
sh		$31,-15548($31)
addi	$1,$1,1
TAG_28:
mflo	$1
mfhi	$2
#end