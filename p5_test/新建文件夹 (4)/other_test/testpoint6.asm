li		$t2,80
sw		$t2,0($0)
li		$t2,-1
sw		$t2,4($0)
li		$t2,0
sw		$t2,8($0)
li		$t2,0
sw		$t2,12($0)
li		$t2,32564
sw		$t2,16($0)
li		$t2,0
sw		$t2,20($0)
li		$t2,-56764
sw		$t2,24($0)
li		$t2,111
sw		$t2,28($0)
li		$t2,222
sw		$t2,32($0)
li		$t2,-333
sw		$t2,36($0)
li		$t2,-444
sw		$t2,40($0)
li		$t2,3424232
sw		$t2,44($0)
li		$t2,-356764
sw		$t2,48($0)
li		$t2,-1
sw		$t2,52($0)
li		$t2,1
sw		$t2,56($0)
li		$t2,0
sw		$t2,60($0)
li		$t2,0
sw		$t2,64($0)
li		$t2,2345
sw		$t2,68($0)
li		$t2,0
sw		$t2,72($0)

#--------------------------------------

addi	$1,$0,23333
addi	$2,$0,23333
addi	$3,$0,23333
addi	$4,$0,23333
addi	$5,$0,23333
addi	$6,$0,23333
addi	$7,$0,23333
addi	$8,$0,23333
addi	$9,$0,23333
addi	$10,$0,23333
addi	$11,$0,23333
addi	$12,$0,23333
addi	$13,$0,23333
addi	$14,$0,23333
addi	$15,$0,23333
addi	$16,$0,23333
addi	$17,$0,23333
addi	$18,$0,23333
addi	$19,$0,23333
addi	$20,$0,23333
addi	$21,$0,23333
addi	$22,$0,23333
addi	$23,$0,23333
addi	$24,$0,23333
addi	$25,$0,23333
addi	$26,$0,23333
addi	$27,$0,23333
addi	$28,$0,23333
addi	$29,$0,23333
addi	$30,$0,23333
addi	$31,$0,23333

addi	$s0,$0,0
lw		$s1,0($s0)
addi	$s0,$s0,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

addu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

subu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

and		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

or		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

slt		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

xor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

nor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sllv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srlv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srav	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sltu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

addu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

subu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

and		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

or		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

slt		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

xor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

nor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sllv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srlv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srav	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sltu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

addu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
addu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

subu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
subu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

and		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
and		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

or		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
or		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

slt		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
slt		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

xor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
xor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

nor		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
nor		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sllv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sllv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srlv	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srlv	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

srav	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
srav	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sltu	$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sltu	$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

#--------------------------------------
lw		$t0,0($s0)
addi	$s0,$s0,4
lw		$t1,0($s0)
addi	$s0,$s0,4

add		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
add		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

sub		$t2,$t0,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t0,$t0
sw		$t2,0($s1)
addi	$s1,$s1,4
sub		$t2,$t1,$t1
sw		$t2,0($s1)
addi	$s1,$s1,4

addi	$t2,$0,2222
sw		$t2,0($s1)
addi	$s1,$s1,4
addi	$t2,$0,3333
sw		$t2,0($s1)
addi	$s1,$s1,4
addi	$t2,$0,4444
sw		$t2,0($s1)
addi	$s1,$s1,4