ori $1,20
ori $2,40
ori $3,80
subu $1,$1,$2
sw $1,0($0)
lw $1,0($0)
bg:
beq $3,$1,end
addu $3,$3,$0
bgezall $1,loop
addu $2,$2,$0
subu $1,$1,$1
loop:
j bg
addu $1,$1,$2
end: