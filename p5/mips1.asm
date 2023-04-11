ori $10,$0,100
ori $11,$0,5
ori $1,$0,1
ori $2,$0,1
ori $24,$0,5
lui $25,67

loop:
addu $2,$2,$1
subu $10,$10,$1
subu $24,$24,$1
subu $23,$24,$24
sw $24,0($23)
lw $24,0($0)
beq $24,$2,end

lw $10,0($23)
addu $10,$10,$10
jal loop
sw $31,0($23)

end:
jal loop1
sw $31,0($23)
addu $2,$2,$0
beq $2,$2,end2
loop1:
lw $30,0($23)
jr $30
lw $31,0($23)
end2:


