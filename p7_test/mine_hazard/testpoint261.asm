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

lb		$7,-168($7)
mflo	$7
slti	$20,$20,-3
sllv	$7,$7,$7
mflo	$1
mfhi	$2
addi	$1,$0,36
addi	$2,$0,117
addi	$7,$0,121
addi	$20,$0,243
lbu		$0,-200($9)
mfc0	$0,$12
sltiu	$9,$0,-1
srlv	$0,$0,$0
mflo	$1
mfhi	$2
addi	$1,$0,212
addi	$2,$0,141
lh		$18,-252($18)
mfhi	$18
xori	$18,$18,153
addi	$18,$18,11
mflo	$1
mfhi	$2
addi	$1,$0,133
addi	$2,$0,55
lhu		$7,-176($21)
mflo	$7
addiu	$7,$7,73
andi	$21,$7,104
mflo	$1
mfhi	$2
addi	$1,$0,121
addi	$2,$0,106
lw		$7,-192($22)
mfc0	$7,$13
ori		$22,$7,205
slti	$22,$22,0
mflo	$1
mfhi	$2
addi	$1,$0,246
addi	$2,$0,51
addi	$7,$0,114
addi	$22,$0,255
lb		$0,-128($15)
mfhi	$15
sltiu	$0,$15,-1
xori	$15,$0,105
mflo	$1
mfhi	$2
addi	$1,$0,85
addi	$2,$0,246
lbu		$19,-140($19)
mflo	$19
addi	$19,$19,-157
sll		$19,$19,2
mflo	$1
mfhi	$2
addi	$1,$0,86
addi	$2,$0,174
lh		$23,-22($7)
mfc0	$7,$13
addiu	$23,$23,233
srl		$7,$7,1
mflo	$1
mfhi	$2
addi	$1,$0,208
addi	$2,$0,79
addi	$7,$0,108
lhu		$7,-228($24)
mfhi	$7
andi	$7,$24,84
sra		$24,$24,2
mflo	$1
mfhi	$2
addi	$1,$0,20
addi	$2,$0,237
lw		$0,128($0)
mflo	$11
ori		$11,$11,218
sll		$0,$0,1
mflo	$1
mfhi	$2
addi	$1,$0,54
addi	$2,$0,135
lb		$20,-179($20)
mfc0	$20,$12
slti	$20,$20,0
lbu		$20,132($20)
mflo	$1
mfhi	$2
addi	$1,$0,51
addi	$2,$0,60
lh		$25,-48($7)
mfhi	$7
sltiu	$25,$7,-4
lhu		$25,27($25)
mflo	$1
mfhi	$2
addi	$1,$0,246
addi	$2,$0,61
addi	$7,$0,51
lw		$7,-3($7)
mflo	$7
xori	$26,$26,160
lb		$26,12($26)
mflo	$1
mfhi	$2
addi	$1,$0,47
addi	$2,$0,249
addi	$7,$0,184
lbu		$0,120($0)
mfc0	$25,$12
addi	$0,$0,-175
lh		$0,4($0)
mflo	$1
mfhi	$2
addi	$1,$0,204
addi	$2,$0,24
addi	$25,$0,92
lhu		$21,56($21)
mfhi	$21
addiu	$21,$21,106
sb		$21,322($21)
mflo	$1
mfhi	$2
addi	$1,$0,107
addi	$2,$0,240
lw		$7,-168($7)
mflo	$7
andi	$27,$27,149
sh		$27,324($7)
mflo	$1
mfhi	$2
addi	$1,$0,235
addi	$2,$0,16
addi	$7,$0,181
lb		$28,-49($7)
mfc0	$7,$13
ori		$7,$7,167
sw		$28,149($7)
mflo	$1
mfhi	$2
addi	$1,$0,184
addi	$2,$0,7
lbu		$0,112($0)
mfhi	$23
slti	$0,$23,-6
sb		$0,316($0)
mflo	$1
mfhi	$2
addi	$1,$0,246
addi	$2,$0,158
addi	$23,$0,152
lh		$22,-203($22)
mflo	$22
sltiu	$22,$22,3
mult	$22,$22
mflo	$1
mfhi	$2
addi	$2,$0,226
lhu		$29,-136($29)
mfc0	$7,$12
xori	$29,$7,80
multu	$29,$29
mflo	$1
mfhi	$2
addi	$2,$0,123
addi	$7,$0,139
lw		$30,-168($30)
mfhi	$7
addi	$30,$30,-87
mthi	$30
mflo	$1
mfhi	$2
addi	$7,$0,112
lb		$4,-148($4)
mflo	$0
addiu	$0,$4,154
mtlo	$4
mflo	$1
mfhi	$2
lbu		$23,-68($23)
mfc0	$23,$12
andi	$23,$23,40
beq		$23,$23,TAG_0
addiu	$23,$23,1
addiu	$23,$23,1
TAG_0:
mflo	$1
mfhi	$2
lh		$8,-116($8)
mfhi	$8
ori		$1,$8,190
bne		$8,$1,TAG_1
addiu	$8,$1,1
addiu	$1,$8,1
TAG_1:
mflo	$1
mfhi	$2
lhu		$2,91($2)
mflo	$8
slti	$2,$8,3
beq		$8,$8,TAG_2
addiu	$8,$8,1
addiu	$8,$8,1
TAG_2:
mflo	$1
mfhi	$2
lw		$20,-68($20)
mfc0	$0,$12
sltiu	$0,$20,-7
bne		$20,$0,TAG_3
addiu	$20,$0,1
addiu	$0,$20,1
TAG_3:
mflo	$1
mfhi	$2
lb		$24,29($24)
mfhi	$24
xori	$24,$24,206
beq		$24,$0,TAG_4
addiu	$24,$0,1
addiu	$0,$24,1
TAG_4:
mflo	$1
mfhi	$2
lbu		$3,207($8)
mflo	$8
addi	$3,$3,-237
bne		$8,$8,TAG_5
addiu	$8,$8,1
addiu	$8,$8,1
TAG_5:
mflo	$1
mfhi	$2
lh		$8,128($4)
mfc0	$8,$13
addiu	$4,$4,81
beq		$8,$1,TAG_6
addiu	$8,$1,1
addiu	$1,$8,1
TAG_6:
mflo	$1
mfhi	$2
lhu		$0,236($26)
mfhi	$26
andi	$26,$26,181
bne		$26,$26,TAG_7
addiu	$26,$26,1
addiu	$26,$26,1
TAG_7:
mflo	$1
mfhi	$2
lw		$25,40($25)
mflo	$25
ori		$25,$25,194
bgtz	$25,TAG_8
addiu	$25,$25,1
addiu	$25,$25,1
TAG_8:
mflo	$1
mfhi	$2
lb		$5,-152($5)
mfc0	$8,$12
slti	$8,$8,-1
bgez	$8,TAG_9
addiu	$8,$8,1
addiu	$8,$8,1
TAG_9:
mflo	$1
mfhi	$2
lbu		$8,-124($6)
mfhi	$8
sltiu	$6,$8,-7
bltz	$8,TAG_10
addiu	$8,$8,1
addiu	$8,$8,1
TAG_10:
mflo	$1
mfhi	$2
lh		$0,60($0)
mflo	$0
xori	$9,$0,16
blez	$0,TAG_11
addiu	$0,$0,1
addiu	$0,$0,1
TAG_11:
mflo	$1
mfhi	$2
lhu		$26,61($26)
mfc0	$26,$12
addi	$26,$26,234
bgtz	$26,TAG_12
addiu	$26,$26,1
addiu	$26,$26,1
TAG_12:
mflo	$1
mfhi	$2
lw		$8,37($8)
mfhi	$8
addiu	$7,$8,188
bgez	$8,TAG_13
addiu	$8,$8,1
addiu	$8,$8,1
TAG_13:
mflo	$1
mfhi	$2
lb		$8,98($8)
mflo	$8
andi	$8,$8,114
bltz	$8,TAG_14
addiu	$8,$8,1
addiu	$8,$8,1
TAG_14:
mflo	$1
mfhi	$2
lbu		$26,144($0)
mfc0	$26,$12
ori		$26,$0,163
blez	$26,TAG_15
addiu	$26,$26,1
addiu	$26,$26,1
TAG_15:
mflo	$1
mfhi	$2
lh		$29,8($29)
mfhi	$29
srl		$29,$29,1
srav	$29,$29,$29
mflo	$1
mfhi	$2
addi	$29,$0,199
lhu		$13,-212($13)
mflo	$8
sra		$13,$8,1
slt		$8,$13,$13
mflo	$1
mfhi	$2
addi	$8,$0,144
lw		$14,-156($14)
mfc0	$8,$12
sll		$8,$14,1
sltu	$14,$14,$8
mflo	$1
mfhi	$2
lb		$3,36($0)
mfhi	$0
srl		$3,$0,2
sub		$0,$0,$3
mflo	$1
mfhi	$2
addi	$3,$0,255
lbu		$30,-45($30)
mflo	$30
sra		$30,$30,2
slti	$30,$30,-6
mflo	$1
mfhi	$2
lh		$15,-45($15)
mfc0	$8,$13
sll		$15,$8,1
sltiu	$15,$15,3
mflo	$1
mfhi	$2
addi	$8,$0,217
lhu		$16,-153($8)
mfhi	$8
srl		$16,$16,1
xori	$8,$8,75
mflo	$1
mfhi	$2
lw		$0,64($0)
mflo	$0
sra		$22,$22,1
addi	$22,$22,138
mflo	$1
mfhi	$2
lb		$1,124($1)
mfc0	$1,$13
sll		$1,$1,1
srl		$1,$1,1
mflo	$1
mfhi	$2
lbu		$8,-6($8)
mfhi	$8
sra		$17,$17,2
sll		$8,$8,1
mflo	$1
mfhi	$2
lh		$18,-124($18)
mflo	$8
srl		$18,$8,1
sra		$8,$18,2
mflo	$1
mfhi	$2
lhu		$0,96($0)
mfc0	$18,$13
sll		$0,$0,1
srl		$0,$0,2
mflo	$1
mfhi	$2
addi	$18,$0,193
lw		$2,-17($2)
mfhi	$2
sra		$2,$2,2
lb		$2,43($2)
mflo	$1
mfhi	$2
lbu		$8,11789($8)
mflo	$8
sll		$8,$8,2
lh		$19,652($19)
mflo	$1
mfhi	$2
addi	$1,$0,72
mfc0	$1,$12
addi	$1,$0,68
mfc0	$1,$13
addi	$1,$0,116
mfc0	$1,$14
lhu		$8,75($20)
mfc0	$8,$13
srl		$20,$8,2
lw		$20,68($8)
mflo	$1
mfhi	$2
lb		$25,116($0)
mfhi	$25
sra		$0,$0,1
lbu		$0,59($25)
mflo	$1
mfhi	$2
lh		$3,-203($3)
mflo	$3
sll		$3,$3,1
sh		$3,616($3)
mflo	$1
mfhi	$2
lhu		$8,-58($21)
mfc0	$8,$12
srl		$8,$21,1
sw		$21,311($8)
mflo	$1
mfhi	$2
lw		$8,-138($22)
mfhi	$8
sra		$22,$8,1
sb		$22,295($8)
mflo	$1
mfhi	$2
lb		$25,75($25)
mflo	$0
sll		$0,$25,1
sh		$0,492($25)
mflo	$1
mfhi	$2
lbu		$4,155($4)
mfc0	$4,$12
srl		$4,$4,2
mtc0	$4,$13
mflo	$1
mfhi	$2
lh		$8,71($8)
mfhi	$8
sra		$23,$8,1
div		$23,$8
mflo	$1
mfhi	$2
addi	$1,$0,73
lhu		$24,103($8)
mflo	$8
sll		$8,$24,2
divu	$8,$8
mflo	$1
mfhi	$2
addi	$2,$0,148
lw		$0,144($13)
mfc0	$13,$12
srl		$0,$13,2
mult	$0,$0
mflo	$1
mfhi	$2
addi	$1,$0,81
addi	$2,$0,234
lb		$5,188($5)
mfhi	$5
sra		$5,$5,1
beq		$5,$5,TAG_16
addiu	$5,$5,1
addiu	$5,$5,1
TAG_16:
mflo	$1
mfhi	$2
addi	$1,$0,88
addi	$2,$0,179
lbu		$25,-92($8)
mflo	$8
sll		$8,$25,2
bne		$25,$8,TAG_17
addiu	$25,$8,1
addiu	$8,$25,1
TAG_17:
mflo	$1
mfhi	$2
addi	$1,$0,115
addi	$2,$0,244
lh		$8,-616($8)
mfc0	$8,$12
srl		$26,$26,1
beq		$8,$8,TAG_18
addiu	$8,$8,1
addiu	$8,$8,1
TAG_18:
mflo	$1
mfhi	$2
addi	$1,$0,204
addi	$2,$0,162
lhu		$21,148($0)
mfhi	$0
sra		$0,$0,1
bne		$21,$0,TAG_19
addiu	$21,$0,1
addiu	$0,$21,1
TAG_19:
mflo	$1
mfhi	$2
addi	$1,$0,219
addi	$2,$0,112
lw		$6,31($6)
mflo	$6
sll		$6,$6,2
beq		$6,$1,TAG_20
addiu	$6,$1,1
addiu	$1,$6,1
TAG_20:
mflo	$1
mfhi	$2
addi	$1,$0,243
addi	$2,$0,40
lb		$8,15($8)
mfc0	$8,$13
srl		$8,$8,2
bne		$8,$8,TAG_21
addiu	$8,$8,1
addiu	$8,$8,1
TAG_21:
mflo	$1
mfhi	$2
addi	$1,$0,18
addi	$2,$0,183
lbu		$28,148($28)
mfhi	$8
sra		$28,$28,2
beq		$28,$8,TAG_22
addiu	$28,$8,1
addiu	$8,$28,1
TAG_22:
mflo	$1
mfhi	$2
addi	$1,$0,84
addi	$2,$0,108
lh		$0,56($9)
mflo	$0
sll		$9,$9,2
bne		$9,$9,TAG_23
addiu	$9,$9,1
addiu	$9,$9,1
TAG_23:
mflo	$1
mfhi	$2
addi	$1,$0,36
addi	$2,$0,189
lhu		$7,-209($7)
mfc0	$7,$12
srl		$7,$7,1
bgtz	$7,TAG_24
addiu	$7,$7,1
addiu	$7,$7,1
TAG_24:
mflo	$1
mfhi	$2
addi	$1,$0,99
addi	$2,$0,49
lw		$29,14($8)
mfhi	$8
sra		$8,$29,2
bgez	$8,TAG_25
addiu	$8,$8,1
addiu	$8,$8,1
TAG_25:
mflo	$1
mfhi	$2
addi	$1,$0,219
addi	$2,$0,38
lb		$30,35($30)
mflo	$8
sll		$30,$8,1
bltz	$8,TAG_26
addiu	$8,$8,1
addiu	$8,$8,1
TAG_26:
mflo	$1
mfhi	$2
addi	$1,$0,70
addi	$2,$0,74
addi	$30,$0,186
lbu		$0,132($0)
mfc0	$10,$13
srl		$10,$0,2
blez	$10,TAG_27
addiu	$10,$10,1
addiu	$10,$10,1
TAG_27:
mflo	$1
mfhi	$2
addi	$1,$0,228
addi	$2,$0,222
lh		$8,90($8)
mfhi	$8
sra		$8,$8,1
bgtz	$8,TAG_28
addiu	$8,$8,1
addiu	$8,$8,1
TAG_28:
mflo	$1
mfhi	$2
addi	$1,$0,5
addi	$2,$0,174
lhu		$1,67($1)
mflo	$9
sll		$1,$1,1
bgez	$9,TAG_29
addiu	$9,$9,1
addiu	$9,$9,1
TAG_29:
mflo	$1
mfhi	$2
addi	$1,$0,73
addi	$2,$0,69
lw		$9,-57($2)
mfc0	$9,$13
srl		$9,$2,2
bltz	$9,TAG_30
addiu	$9,$9,1
addiu	$9,$9,1
TAG_30:
mflo	$1
mfhi	$2
addi	$1,$0,180
addi	$2,$0,51
lb		$18,-177($18)
mfhi	$0
sra		$0,$0,2
blez	$0,TAG_31
addiu	$0,$0,1
addiu	$0,$0,1
TAG_31:
mflo	$1
mfhi	$2
addi	$1,$0,233
addi	$2,$0,250
lbu		$11,-194($11)
mflo	$11
lh		$11,32($11)
subu	$11,$11,$11
mflo	$1
mfhi	$2
addi	$1,$0,20
addi	$2,$0,69
addi	$11,$0,41
lhu		$7,105($9)
mfc0	$9,$12
lw		$9,-92($7)
xor		$7,$9,$7
mflo	$1
mfhi	$2
addi	$1,$0,158
addi	$2,$0,223
lb		$9,-48($9)
mfhi	$9
lbu		$8,38($8)
add		$9,$9,$8
mflo	$1
mfhi	$2
addi	$1,$0,221
addi	$2,$0,206
lh		$3,36($0)
mflo	$3
lhu		$0,116($0)
addu	$3,$0,$0
mflo	$1
mfhi	$2
addi	$1,$0,208
addi	$2,$0,168
addi	$3,$0,89
lw		$12,-164($12)
mfc0	$12,$12
lb		$12,-32($12)
addiu	$12,$12,225
mflo	$1
mfhi	$2
addi	$1,$0,204
addi	$2,$0,180
lbu		$9,0($9)
mfhi	$9
lh		$9,88($9)
andi	$9,$9,211
mflo	$1
mfhi	$2
addi	$1,$0,0
addi	$2,$0,187
lhu		$9,-148($9)
mflo	$9
lw		$9,156($9)
ori		$9,$9,72
mflo	$1
mfhi	$2
addi	$1,$0,81
addi	$2,$0,123
lb		$22,46($22)
mfc0	$22,$13
lbu		$22,30($22)
slti	$22,$22,-1
mflo	$1
mfhi	$2
addi	$1,$0,15
addi	$2,$0,193
addi	$22,$0,60
lh		$13,-40($13)
mfhi	$13
lhu		$13,64($13)
sll		$13,$13,1
mflo	$1
mfhi	$2
addi	$1,$0,113
addi	$2,$0,230
lw		$11,-17($11)
mflo	$9
lb		$11,48($9)
srl		$11,$9,1
mflo	$1
mfhi	$2
addi	$1,$0,213
addi	$2,$0,134
addi	$9,$0,246
addi	$11,$0,10
lbu		$9,-253($12)
mfc0	$9,$13
lh		$9,2($9)
sra		$9,$12,1
mflo	$1
mfhi	$2
addi	$1,$0,125
addi	$2,$0,168
lhu		$27,-128($27)
mfhi	$27
lw		$27,44($27)
sll		$27,$0,2
mflo	$1
mfhi	$2
addi	$1,$0,251
addi	$2,$0,93
addi	$27,$0,53
lb		$14,3($14)
mflo	$14
lbu		$14,40($14)
lh		$14,-32($14)
mflo	$1
mfhi	$2
addi	$1,$0,82
addi	$2,$0,15
lhu		$9,-86($9)
mfc0	$9,$13
lw		$13,-188($13)
lb		$13,-100($13)
mflo	$1
mfhi	$2
addi	$1,$0,175
addi	$2,$0,8
lbu		$9,-60($14)
mfhi	$9
lh		$9,120($9)
lhu		$14,-80($9)
mflo	$1
mfhi	$2
addi	$1,$0,164
addi	$2,$0,104
lw		$25,-473($25)
mflo	$0
lb		$25,40($0)
lbu		$0,124($0)
mflo	$1
mfhi	$2
addi	$1,$0,145
addi	$2,$0,61
lh		$15,131($15)
mfc0	$15,$13
lhu		$15,-2($15)
sw		$15,332($15)
mflo	$1
mfhi	$2
.ktext 0x4180

_entry8:
	sw		$k0,0x2ffc($0)
	mfc0	$k0,$12
	mfc0	$k0,$13
	mfc0	$k0,$14
	addiu	$k0,$k0,4
	mtc0	$k0,$14
	lw		$k0,0x2ffc($0)
	eret
	bgez	$k0,JUMP1
	lw		$k0,0x2ffc($0)
	lw		$k0,0x2ffc($0)
	JUMP1:
	lw		$k0,0x2ffc($0)
	lw		$k0,0x2ffc($0)
	lw		$k0,0x2ffc($0)
#end