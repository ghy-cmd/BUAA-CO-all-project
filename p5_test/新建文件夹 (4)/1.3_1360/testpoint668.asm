addi	$s0,$0,104
sw		$s0,4($0)
addi	$s0,$0,12
sw		$s0,8($0)
addi	$s0,$0,92
sw		$s0,12($0)
addi	$s0,$0,80
sw		$s0,16($0)
addi	$s0,$0,76
sw		$s0,20($0)
addi	$s0,$0,68
sw		$s0,24($0)
addi	$s0,$0,56
sw		$s0,28($0)
addi	$s0,$0,108
sw		$s0,32($0)
addi	$s0,$0,64
sw		$s0,36($0)
addi	$s0,$0,4
sw		$s0,40($0)
addi	$s0,$0,16
sw		$s0,44($0)
addi	$s0,$0,116
sw		$s0,48($0)
addi	$s0,$0,28
sw		$s0,52($0)
addi	$s0,$0,96
sw		$s0,56($0)
addi	$s0,$0,44
sw		$s0,60($0)
addi	$s0,$0,8
sw		$s0,64($0)
addi	$s0,$0,20
sw		$s0,68($0)
addi	$s0,$0,40
sw		$s0,72($0)
addi	$s0,$0,88
sw		$s0,76($0)
addi	$s0,$0,72
sw		$s0,80($0)
addi	$s0,$0,32
sw		$s0,84($0)
addi	$s0,$0,100
sw		$s0,88($0)
addi	$s0,$0,52
sw		$s0,92($0)
addi	$s0,$0,120
sw		$s0,96($0)
addi	$s0,$0,24
sw		$s0,100($0)
addi	$s0,$0,60
sw		$s0,104($0)
addi	$s0,$0,84
sw		$s0,108($0)
addi	$s0,$0,112
sw		$s0,112($0)
addi	$s0,$0,48
sw		$s0,116($0)
addi	$s0,$0,36
sw		$s0,120($0)

#--------------

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

addi	$t0,$0,8
addi	$t2,$0,-12288

#--------------

addi	$31,$0,20
nop
jal		TAG_0
addu	$31,$t0,$31
addi	$31,$31,4
TAG_0:
addu	$31,$t2,$31
lw		$31,0($31)
sw		$31,4096($31)

addi	$31,$0,0
nop
jal		TAG_1
addi	$31,$31,4
addu	$31,$31,$t0
TAG_1:
addu	$31,$t2,$31
lw		$31,0($31)
addu	$31,$t0,$31

addi	$31,$0,28
nop
jal		TAG_2
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_2:
addu	$31,$t2,$31
lw		$31,0($31)
addu	$31,$t0,$31

addi	$31,$0,4
nop
jal		TAG_3
addi	$31,$31,4
addu	$31,$31,$t0
TAG_3:
addu	$31,$t2,$31
lw		$31,0($31)
addu	$31,$31,$t0

addi	$31,$0,24
nop
jal		TAG_4
addi	$31,$31,4
addi	$31,$31,4
TAG_4:
addu	$31,$t2,$31
lw		$31,0($31)
addu	$31,$31,$t0

addi	$31,$0,24
nop
jal		TAG_5
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_5:
addu	$31,$t2,$31
lw		$31,0($31)
beq		$31,$31,TAG_6
addi	$31,$31,4
lw		$31,0($31)
TAG_6:

addi	$31,$0,28
nop
jal		TAG_7
addu	$31,$t0,$31
addi	$31,$31,4
TAG_7:
addu	$31,$t2,$31
lw		$31,0($31)
beq		$31,$31,TAG_8
sw		$31,4096($31)
addi	$31,$31,4
TAG_8:

addi	$31,$0,24
nop
jal		TAG_9
addi	$31,$31,4
lw		$31,-12288($31)
TAG_9:
addu	$31,$t2,$31
lw		$31,0($31)
beq		$31,$0,TAG_10
lw		$31,0($31)
addu	$31,$t0,$31
TAG_10:

addi	$31,$0,24
nop
jal		TAG_11
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_11:
addu	$31,$t2,$31
lw		$31,0($31)
beq		$31,$0,TAG_12
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_12:

addi	$31,$0,8
nop
jal		TAG_13
addi	$31,$31,4
sw		$31,-8192($31)
TAG_13:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_14
addi	$31,$31,4
addi	$31,$31,4
TAG_14:

addi	$31,$0,20
nop
jal		TAG_15
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_15:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_16
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_16:

addi	$31,$0,16
nop
jal		TAG_17
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_17:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_18
lw		$31,0($31)
addi	$31,$31,4
TAG_18:

addi	$31,$0,4
nop
jal		TAG_19
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_19:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_20
sw		$31,4096($31)
sw		$31,4096($31)
TAG_20:

addi	$31,$0,28
nop
jal		TAG_21
addi	$31,$31,4
addu	$31,$t0,$31
TAG_21:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$31,$31,4

addi	$31,$0,0
nop
jal		TAG_22
addi	$31,$31,4
lw		$31,-12288($31)
TAG_22:
addu	$31,$t2,$31
lw		$31,0($31)
addi	$31,$31,4

addi	$31,$0,8
nop
jal		TAG_23
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_23:
addu	$31,$t2,$31
lw		$31,0($31)
la		$31,TAG_24
jr		$31
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_24:

addi	$31,$0,0
nop
jal		TAG_25
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_25:
addu	$31,$t2,$31
lw		$31,0($31)
la		$31,TAG_26
jr		$31
lw		$31,-12288($31)
lw		$31,0($31)
TAG_26:

addi	$31,$0,24
nop
jal		TAG_27
sw		$31,-8192($31)
addi	$31,$31,4
TAG_27:
addu	$31,$t2,$31
lw		$31,0($31)
la		$31,TAG_28
jalr	$t3,$31
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_28:

addi	$31,$0,8
nop
jal		TAG_29
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_29:
addu	$31,$t2,$31
lw		$31,0($31)
la		$31,TAG_30
jalr	$t3,$31
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_30:

addi	$31,$0,24
nop
jal		TAG_31
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_31:
addu	$31,$t2,$31
addu	$31,$t0,$31
lw		$31,0($31)

addi	$31,$0,8
nop
jal		TAG_32
addi	$31,$31,4
addu	$31,$t0,$31
TAG_32:
addu	$31,$t2,$31
addu	$31,$t0,$31
lw		$31,0($31)

addi	$31,$0,12
nop
jal		TAG_33
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_33:
addu	$31,$t2,$31
addu	$31,$t0,$31
sw		$31,4096($31)

addi	$31,$0,24
nop
jal		TAG_34
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_34:
addu	$31,$t2,$31
addu	$31,$t0,$31
sw		$31,4096($31)

addi	$31,$0,20
nop
jal		TAG_35
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_35:
addu	$31,$t2,$31
addu	$31,$t0,$31
addu	$31,$t0,$31

addi	$31,$0,8
nop
jal		TAG_36
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_36:
addu	$31,$t2,$31
addu	$31,$t0,$31
addu	$31,$t0,$31

addi	$31,$0,0
nop
jal		TAG_37
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_37:
addu	$31,$t2,$31
addu	$31,$t0,$31
addu	$31,$31,$t0

addi	$31,$0,12
nop
jal		TAG_38
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_38:
addu	$31,$t2,$31
addu	$31,$t0,$31
addu	$31,$31,$t0

addi	$31,$0,20
nop
jal		TAG_39
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_39:
addu	$31,$t2,$31
addu	$31,$t0,$31
beq		$31,$31,TAG_40
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_40:

addi	$31,$0,4
nop
jal		TAG_41
addi	$31,$31,4
addu	$31,$t0,$31
TAG_41:
addu	$31,$t2,$31
addu	$31,$t0,$31
beq		$31,$31,TAG_42
sw		$31,4096($31)
addu	$31,$31,$t0
TAG_42:

addi	$31,$0,12
nop
jal		TAG_43
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_43:
addu	$31,$t2,$31
addu	$31,$t0,$31
beq		$31,$0,TAG_44
addu	$31,$31,$t0
sw		$31,4096($31)
TAG_44:

addi	$31,$0,20
nop
jal		TAG_45
addi	$31,$31,4
addu	$31,$t0,$31
TAG_45:
addu	$31,$t2,$31
addu	$31,$t0,$31
beq		$31,$0,TAG_46
addu	$31,$t0,$31
addi	$31,$31,4
TAG_46:

addi	$31,$0,20
nop
jal		TAG_47
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_47:
addu	$31,$t2,$31
addu	$31,$t0,$31
addi	$t1,$31,0
beq		$t1,$31,TAG_48
lw		$31,0($31)
addu	$31,$31,$t0
TAG_48:

addi	$31,$0,24
nop
jal		TAG_49
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_49:
addu	$31,$t2,$31
addu	$31,$t0,$31
addi	$t1,$31,0
beq		$t1,$31,TAG_50
sw		$31,4096($31)
lw		$31,0($31)
TAG_50:

addi	$31,$0,8
nop
jal		TAG_51
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_51:
addu	$31,$t0,$31
addu	$31,$t0,$31
addi	$t1,$31,1
beq		$31,$t1,TAG_52
addu	$31,$t0,$31
lw		$31,0($31)
TAG_52:

addi	$31,$0,24
nop
jal		TAG_53
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_53:
addu	$31,$t2,$31
addu	$31,$t0,$31
addi	$t1,$31,1
beq		$31,$t1,TAG_54
lw		$31,0($31)
sw		$31,4096($31)
TAG_54:

addi	$31,$0,24
nop
jal		TAG_55
addi	$31,$31,4
sw		$31,-8192($31)
TAG_55:
addu	$31,$t2,$31
addu	$31,$t0,$31
addi	$31,$31,4

addi	$31,$0,16
nop
jal		TAG_56
addi	$31,$31,4
addu	$31,$t0,$31
TAG_56:
addu	$31,$t2,$31
addu	$31,$t0,$31
addi	$31,$31,4

addi	$31,$0,20
nop
jal		TAG_57
addi	$31,$31,4
addu	$31,$31,$t0
TAG_57:
addu	$31,$t2,$31
addu	$31,$t0,$31
la		$31,TAG_58
jr		$31
addi	$31,$31,4
sw		$31,-8192($31)
TAG_58:

addi	$31,$0,20
nop
jal		TAG_59
addu	$31,$t0,$31
addi	$31,$31,4
TAG_59:
addu	$31,$t2,$31
addu	$31,$t0,$31
la		$31,TAG_60
jr		$31
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_60:

addi	$31,$0,28
nop
jal		TAG_61
addu	$31,$31,$t0
addi	$31,$31,4
TAG_61:
addu	$31,$t2,$31
addu	$31,$t0,$31
la		$31,TAG_62
jalr	$t3,$31
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_62:

addi	$31,$0,0
nop
jal		TAG_63
lw		$31,-12288($31)
lw		$31,0($31)
TAG_63:
addu	$31,$t0,$31
addu	$31,$t0,$31
la		$31,TAG_64
jalr	$t3,$31
sw		$31,-8192($31)
addi	$31,$31,4
TAG_64:

addi	$31,$0,28
nop
jal		TAG_65
addu	$31,$31,$t0
addi	$31,$31,4
TAG_65:
addu	$31,$t2,$31
addu	$31,$31,$t0
lw		$31,0($31)

addi	$31,$0,4
nop
jal		TAG_66
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_66:
addu	$31,$t2,$31
addu	$31,$31,$t0
lw		$31,0($31)

addi	$31,$0,0
nop
jal		TAG_67
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_67:
addu	$31,$t2,$31
addu	$31,$31,$t0
sw		$31,4096($31)

addi	$31,$0,4
nop
jal		TAG_68
addi	$31,$31,4
addi	$31,$31,4
TAG_68:
addu	$31,$t2,$31
addu	$31,$31,$t0
sw		$31,4096($31)

addi	$31,$0,12
nop
jal		TAG_69
lw		$31,-12288($31)
addi	$31,$31,4
TAG_69:
addu	$31,$t0,$31
addu	$31,$31,$t0
addu	$31,$t0,$31

addi	$31,$0,16
nop
jal		TAG_70
addu	$31,$t0,$31
addi	$31,$31,4
TAG_70:
addu	$31,$t2,$31
addu	$31,$31,$t0
addu	$31,$t0,$31

addi	$31,$0,28
nop
jal		TAG_71
addu	$31,$t0,$31
addi	$31,$31,4
TAG_71:
addu	$31,$t2,$31
addu	$31,$31,$t0
addu	$31,$31,$t0

addi	$31,$0,4
nop
jal		TAG_72
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_72:
addu	$31,$t2,$31
addu	$31,$31,$t0
addu	$31,$31,$t0

addi	$31,$0,24
nop
jal		TAG_73
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_73:
addu	$31,$t2,$31
addu	$31,$31,$t0
beq		$31,$31,TAG_74
sw		$31,4096($31)
sw		$31,4096($31)
TAG_74:

addi	$31,$0,28
nop
jal		TAG_75
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_75:
addu	$31,$t2,$31
addu	$31,$31,$t0
beq		$31,$31,TAG_76
lw		$31,0($31)
addu	$31,$31,$t0
TAG_76:

addi	$31,$0,24
nop
jal		TAG_77
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_77:
addu	$31,$t2,$31
addu	$31,$31,$t0
beq		$31,$0,TAG_78
addi	$31,$31,4
lw		$31,0($31)
TAG_78:

addi	$31,$0,20
nop
jal		TAG_79
addi	$31,$31,4
addu	$31,$t0,$31
TAG_79:
addu	$31,$t2,$31
addu	$31,$31,$t0
beq		$31,$0,TAG_80
sw		$31,4096($31)
addu	$31,$31,$t0
TAG_80:

addi	$31,$0,4
nop
jal		TAG_81
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_81:
addu	$31,$t2,$31
addu	$31,$31,$t0
addi	$t1,$31,0
beq		$t1,$31,TAG_82
addu	$31,$31,$t0
lw		$31,0($31)
TAG_82:

addi	$31,$0,16
nop
jal		TAG_83
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_83:
addu	$31,$t2,$31
addu	$31,$31,$t0
addi	$t1,$31,0
beq		$t1,$31,TAG_84
addu	$31,$31,$t0
addi	$31,$31,4
TAG_84:

addi	$31,$0,20
nop
jal		TAG_85
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_85:
addu	$31,$t0,$31
addu	$31,$31,$t0
addi	$t1,$31,1
beq		$31,$t1,TAG_86
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_86:

addi	$31,$0,0
nop
jal		TAG_87
addi	$31,$31,4
addu	$31,$31,$t0
TAG_87:
addu	$31,$t2,$31
addu	$31,$31,$t0
addi	$t1,$31,1
beq		$31,$t1,TAG_88
sw		$31,4096($31)
addu	$31,$31,$t0
TAG_88:

addi	$31,$0,24
nop
jal		TAG_89
addu	$31,$31,$t0
addi	$31,$31,4
TAG_89:
addu	$31,$t2,$31
addu	$31,$31,$t0
addi	$31,$31,4

addi	$31,$0,8
nop
jal		TAG_90
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_90:
addu	$31,$t2,$31
addu	$31,$31,$t0
addi	$31,$31,4

addi	$31,$0,20
nop
jal		TAG_91
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_91:
addu	$31,$t2,$31
addu	$31,$31,$t0
la		$31,TAG_92
jr		$31
sw		$31,-8192($31)
addi	$31,$31,4
TAG_92:

addi	$31,$0,4
nop
jal		TAG_93
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_93:
addu	$31,$t2,$31
addu	$31,$31,$t0
la		$31,TAG_94
jr		$31
addi	$31,$31,4
addi	$31,$31,4
TAG_94:

addi	$31,$0,12
nop
jal		TAG_95
addi	$31,$31,4
addi	$31,$31,4
TAG_95:
addu	$31,$t2,$31
addu	$31,$31,$t0
la		$31,TAG_96
jalr	$t3,$31
addi	$31,$31,4
lw		$31,-12288($31)
TAG_96:

addi	$31,$0,0
nop
jal		TAG_97
addi	$31,$31,4
addu	$31,$31,$t0
TAG_97:
addu	$31,$t2,$31
addu	$31,$31,$t0
la		$31,TAG_98
jalr	$t3,$31
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_98:

addi	$31,$0,8
nop
jal		TAG_99
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_99:
addu	$31,$t2,$31
addi	$31,$31,4
lw		$31,0($31)

addi	$31,$0,20
nop
jal		TAG_100
lw		$31,-12288($31)
addi	$31,$31,4
TAG_100:
addu	$31,$t0,$31
addi	$31,$31,4
lw		$31,0($31)

addi	$31,$0,24
nop
jal		TAG_101
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_101:
addu	$31,$t0,$31
addi	$31,$31,4
sw		$31,4096($31)

addi	$31,$0,16
nop
jal		TAG_102
addu	$31,$31,$t0
addi	$31,$31,4
TAG_102:
addu	$31,$t2,$31
addi	$31,$31,4
sw		$31,4096($31)

addi	$31,$0,0
nop
jal		TAG_103
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_103:
addu	$31,$t0,$31
addi	$31,$31,4
addu	$31,$t0,$31

addi	$31,$0,8
nop
jal		TAG_104
addu	$31,$31,$t0
addi	$31,$31,4
TAG_104:
addu	$31,$t2,$31
addi	$31,$31,4
addu	$31,$t0,$31

addi	$31,$0,20
nop
jal		TAG_105
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_105:
addu	$31,$t2,$31
addi	$31,$31,4
addu	$31,$31,$t0

addi	$31,$0,28
nop
jal		TAG_106
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_106:
addu	$31,$t2,$31
addi	$31,$31,4
addu	$31,$31,$t0

addi	$31,$0,12
nop
jal		TAG_107
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_107:
addu	$31,$t2,$31
addi	$31,$31,4
beq		$31,$31,TAG_108
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_108:

addi	$31,$0,28
nop
jal		TAG_109
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_109:
addu	$31,$t2,$31
addi	$31,$31,4
beq		$31,$31,TAG_110
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_110:

addi	$31,$0,28
nop
jal		TAG_111
addi	$31,$31,4
lw		$31,-12288($31)
TAG_111:
addu	$31,$t2,$31
addi	$31,$31,4
beq		$31,$0,TAG_112
sw		$31,4096($31)
lw		$31,0($31)
TAG_112:

addi	$31,$0,20
nop
jal		TAG_113
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_113:
addu	$31,$t2,$31
addi	$31,$31,4
beq		$31,$0,TAG_114
sw		$31,4096($31)
addi	$31,$31,4
TAG_114:

addi	$31,$0,20
nop
jal		TAG_115
addi	$31,$31,4
lw		$31,-12288($31)
TAG_115:
addu	$31,$t2,$31
addi	$31,$31,4
addi	$t1,$31,0
beq		$t1,$31,TAG_116
sw		$31,4096($31)
sw		$31,4096($31)
TAG_116:

addi	$31,$0,16
nop
jal		TAG_117
addi	$31,$31,4
addi	$31,$31,4
TAG_117:
addu	$31,$t2,$31
addi	$31,$31,4
addi	$t1,$31,0
beq		$t1,$31,TAG_118
addi	$31,$31,4
addu	$31,$31,$t0
TAG_118:

addi	$31,$0,24
nop
jal		TAG_119
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_119:
addu	$31,$t0,$31
addi	$31,$31,4
addi	$t1,$31,1
beq		$31,$t1,TAG_120
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_120:

addi	$31,$0,12
nop
jal		TAG_121
addi	$31,$31,4
addi	$31,$31,4
TAG_121:
addu	$31,$t2,$31
addi	$31,$31,4
addi	$t1,$31,1
beq		$31,$t1,TAG_122
addu	$31,$t0,$31
addi	$31,$31,4
TAG_122:

addi	$31,$0,20
nop
jal		TAG_123
addi	$31,$31,4
addu	$31,$t0,$31
TAG_123:
addu	$31,$t2,$31
addi	$31,$31,4
addi	$31,$31,4

#--------------

addi	$t0,$0,2222
sw		$t0,2048($0)
addi	$t0,$0,3333
sw		$t0,2052($0)
addi	$t0,$0,4444
sw		$t0,2056($0)