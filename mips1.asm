ori $10,100
sw $10,0x00007f04($0)
ori $6,0x401
mtc0 $6,$12
ori $11,9
sw $11,0x00007f00($0)
addu $12,$10,$11
subu $13,$10,$11
ori $9,9
ori $9,10
ori $9,11
ori $9,12
ori $9,13
ori $9,14
ori $9,9
ori $9,10
ori $9,11
ori $9,12
ori $9,13
ori $9,14



.ktext 0x4180
ori $11,1
sw $11,0x00007f00($0)
mfc0 $15,$13
mtc0 $14,$14
eret
