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

la		$t3,TAG_0
la		$t4,TAG_2
la		$t5,TAG_3
addi	$31,$0,24
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_0:
jal		TAG_1
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_1:
jalr	$31,$t4
lw		$31,-12288($31)
lw		$31,0($31)
TAG_2:
jalr	$31,$t5
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_3:
lw		$31,-12288($31)

la		$t3,TAG_4
la		$t4,TAG_6
la		$t5,TAG_7
addi	$31,$0,0
jalr	$31,$t3
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_4:
jal		TAG_5
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_5:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_6:
jalr	$31,$t5
addu	$31,$31,$t0
addi	$31,$31,4
TAG_7:
sw		$31,-8192($31)

la		$t3,TAG_8
la		$t4,TAG_10
la		$t5,TAG_11
addi	$31,$0,4
jalr	$31,$t3
sw		$31,-8192($31)
addi	$31,$31,4
TAG_8:
jal		TAG_9
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_9:
jalr	$31,$t4
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_10:
jalr	$31,$t5
addi	$31,$31,4
sw		$31,-8192($31)
TAG_11:
sw		$31,-8192($31)

la		$t3,TAG_12
la		$t4,TAG_14
la		$t5,TAG_15
addi	$31,$0,12
jalr	$31,$t3
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_12:
jal		TAG_13
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_13:
jalr	$31,$t4
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_14:
jalr	$31,$t5
addi	$31,$31,4
addi	$31,$31,4
TAG_15:
addu	$31,$t0,$31

la		$t3,TAG_16
la		$t4,TAG_18
la		$t5,TAG_19
addi	$31,$0,0
jalr	$31,$t3
addi	$31,$31,4
addu	$31,$31,$t0
TAG_16:
jal		TAG_17
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_17:
jalr	$31,$t4
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_18:
jalr	$31,$t5
sw		$31,-8192($31)
addi	$31,$31,4
TAG_19:
addu	$31,$t0,$31

la		$t3,TAG_20
la		$t4,TAG_22
la		$t5,TAG_23
addi	$31,$0,16
jalr	$31,$t3
sw		$31,-8192($31)
addi	$31,$31,4
TAG_20:
jal		TAG_21
addi	$31,$31,4
addu	$31,$t0,$31
TAG_21:
jalr	$31,$t4
addi	$31,$31,4
addu	$31,$t0,$31
TAG_22:
jalr	$31,$t5
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_23:
addu	$31,$31,$t0

la		$t3,TAG_24
la		$t4,TAG_26
la		$t5,TAG_27
addi	$31,$0,4
jalr	$31,$t3
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_24:
jal		TAG_25
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_25:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_26:
jalr	$31,$t5
addi	$31,$31,4
addu	$31,$31,$t0
TAG_27:
addu	$31,$31,$t0

la		$t3,TAG_28
la		$t4,TAG_30
la		$t5,TAG_31
addi	$31,$0,12
jalr	$31,$t3
sw		$31,-8192($31)
addi	$31,$31,4
TAG_28:
jal		TAG_29
addi	$31,$31,4
addu	$31,$31,$t0
TAG_29:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_30:
jalr	$31,$t5
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_31:
beq		$31,$31,TAG_32
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_32:

la		$t3,TAG_33
la		$t4,TAG_35
la		$t5,TAG_36
addi	$31,$0,20
jalr	$31,$t3
lw		$31,-12288($31)
lw		$31,0($31)
TAG_33:
jal		TAG_34
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_34:
jalr	$31,$t4
addi	$31,$31,4
addu	$31,$31,$t0
TAG_35:
jalr	$31,$t5
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_36:
beq		$31,$31,TAG_37
addi	$31,$31,4
addi	$31,$31,4
TAG_37:

la		$t3,TAG_38
la		$t4,TAG_40
la		$t5,TAG_41
addi	$31,$0,12
jalr	$31,$t3
addu	$31,$31,$t0
addi	$31,$31,4
TAG_38:
jal		TAG_39
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_39:
jalr	$31,$t4
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_40:
jalr	$31,$t5
addi	$31,$31,4
sw		$31,-8192($31)
TAG_41:
beq		$31,$0,TAG_42
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_42:

la		$t3,TAG_43
la		$t4,TAG_45
la		$t5,TAG_46
addi	$31,$0,28
jalr	$31,$t3
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_43:
jal		TAG_44
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_44:
jalr	$31,$t4
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_45:
jalr	$31,$t5
sw		$31,-8192($31)
addi	$31,$31,4
TAG_46:
beq		$31,$0,TAG_47
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_47:

la		$t3,TAG_48
la		$t4,TAG_50
la		$t5,TAG_51
addi	$31,$0,4
jalr	$31,$t3
addi	$31,$31,4
addu	$31,$31,$t0
TAG_48:
jal		TAG_49
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_49:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_50:
jalr	$31,$t5
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_51:
addi	$t1,$31,0
beq		$t1,$31,TAG_52
addi	$31,$31,4
lw		$31,0($31)
TAG_52:

la		$t3,TAG_53
la		$t4,TAG_55
la		$t5,TAG_56
addi	$31,$0,4
jalr	$31,$t3
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_53:
jal		TAG_54
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_54:
jalr	$31,$t4
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_55:
jalr	$31,$t5
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_56:
addi	$t1,$31,0
beq		$t1,$31,TAG_57
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_57:

la		$t3,TAG_58
la		$t4,TAG_60
la		$t5,TAG_61
addi	$31,$0,20
jalr	$31,$t3
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_58:
jal		TAG_59
addi	$31,$31,4
addu	$31,$31,$t0
TAG_59:
jalr	$31,$t4
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_60:
jalr	$31,$t5
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_61:
addi	$t1,$31,1
beq		$31,$t1,TAG_62
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_62:

la		$t3,TAG_63
la		$t4,TAG_65
la		$t5,TAG_66
addi	$31,$0,16
jalr	$31,$t3
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_63:
jal		TAG_64
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_64:
jalr	$31,$t4
lw		$31,-12288($31)
addi	$31,$31,4
TAG_65:
jalr	$31,$t5
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_66:
addi	$t1,$31,1
beq		$31,$t1,TAG_67
addi	$31,$31,4
lw		$31,0($31)
TAG_67:

la		$t3,TAG_68
la		$t4,TAG_70
la		$t5,TAG_71
addi	$31,$0,16
jalr	$31,$t3
lw		$31,-12288($31)
lw		$31,0($31)
TAG_68:
jal		TAG_69
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_69:
jalr	$31,$t4
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_70:
jalr	$31,$t5
addu	$31,$31,$t0
addi	$31,$31,4
TAG_71:
addi	$31,$31,4

la		$t3,TAG_72
la		$t4,TAG_74
la		$t5,TAG_75
addi	$31,$0,0
jalr	$31,$t3
addi	$31,$31,4
sw		$31,-8192($31)
TAG_72:
jal		TAG_73
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_73:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_74:
jalr	$31,$t5
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_75:
addi	$31,$31,4

la		$t3,TAG_76
la		$t4,TAG_78
la		$t5,TAG_79
addi	$31,$0,0
jalr	$31,$t3
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_76:
jal		TAG_77
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_77:
jalr	$31,$t4
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_78:
jalr	$31,$t5
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_79:
la		$31,TAG_80
jr		$31
sw		$31,-8192($31)
addi	$31,$31,4
TAG_80:

la		$t3,TAG_81
la		$t4,TAG_83
la		$t5,TAG_84
addi	$31,$0,24
jalr	$31,$t3
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_81:
jal		TAG_82
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_82:
jalr	$31,$t4
addi	$31,$31,4
addi	$31,$31,4
TAG_83:
jalr	$31,$t5
addi	$31,$31,4
addi	$31,$31,4
TAG_84:
la		$31,TAG_85
jr		$31
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_85:

la		$t3,TAG_86
la		$t4,TAG_88
la		$t5,TAG_89
addi	$31,$0,12
jalr	$31,$t3
lw		$31,-12288($31)
addi	$31,$31,4
TAG_86:
jal		TAG_87
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_87:
jalr	$31,$t4
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_88:
jalr	$31,$t5
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_89:
la		$31,TAG_90
jalr	$t3,$31
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_90:

la		$t3,TAG_91
la		$t4,TAG_93
la		$t5,TAG_94
addi	$31,$0,8
jalr	$31,$t3
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_91:
jal		TAG_92
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_92:
jalr	$31,$t4
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_93:
jalr	$31,$t5
addi	$31,$31,4
addi	$31,$31,4
TAG_94:
la		$31,TAG_95
jalr	$t3,$31
addu	$31,$t0,$31
addi	$31,$31,4
TAG_95:

la		$t3,TAG_96
la		$t4,TAG_97
addi	$31,$0,4
jalr	$31,$t3
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_96:
jalr	$31,$t4
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_97:
lw		$31,-12288($31)
lw		$31,0($31)
lw		$31,0($31)

la		$t3,TAG_98
la		$t4,TAG_99
addi	$31,$0,8
jalr	$31,$t3
lw		$31,-12288($31)
addi	$31,$31,4
TAG_98:
jalr	$31,$t4
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_99:
lw		$31,-12288($31)
lw		$31,0($31)
lw		$31,0($31)

la		$t3,TAG_100
la		$t4,TAG_101
addi	$31,$0,4
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_100:
jalr	$31,$t4
addi	$31,$31,4
addu	$31,$t0,$31
TAG_101:
lw		$31,-12288($31)
lw		$31,0($31)
sw		$31,4096($31)

la		$t3,TAG_102
la		$t4,TAG_103
addi	$31,$0,24
jalr	$31,$t3
addi	$31,$31,4
addu	$31,$t0,$31
TAG_102:
jalr	$31,$t4
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_103:
lw		$31,0($31)
lw		$31,0($31)
sw		$31,4096($31)

la		$t3,TAG_104
la		$t4,TAG_105
addi	$31,$0,8
jalr	$31,$t3
addi	$31,$31,4
addi	$31,$31,4
TAG_104:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_105:
lw		$31,-12288($31)
lw		$31,0($31)
addu	$31,$t0,$31

la		$t3,TAG_106
la		$t4,TAG_107
addi	$31,$0,16
jalr	$31,$t3
sw		$31,-8192($31)
addi	$31,$31,4
TAG_106:
jalr	$31,$t4
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_107:
lw		$31,-12288($31)
lw		$31,0($31)
addu	$31,$t0,$31

la		$t3,TAG_108
la		$t4,TAG_109
addi	$31,$0,8
jalr	$31,$t3
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_108:
jalr	$31,$t4
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_109:
lw		$31,-12288($31)
lw		$31,0($31)
addu	$31,$31,$t0

la		$t3,TAG_110
la		$t4,TAG_111
addi	$31,$0,20
jalr	$31,$t3
addi	$31,$31,4
addu	$31,$t0,$31
TAG_110:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_111:
lw		$31,-12288($31)
lw		$31,0($31)
addu	$31,$31,$t0

la		$t3,TAG_112
la		$t4,TAG_113
addi	$31,$0,8
jalr	$31,$t3
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_112:
jalr	$31,$t4
addu	$31,$31,$t0
addi	$31,$31,4
TAG_113:
lw		$31,-12288($31)
lw		$31,0($31)
beq		$31,$31,TAG_114
addi	$31,$31,4
sw		$31,4096($31)
TAG_114:

la		$t3,TAG_115
la		$t4,TAG_116
addi	$31,$0,20
jalr	$31,$t3
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_115:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_116:
lw		$31,-12288($31)
lw		$31,0($31)
beq		$31,$31,TAG_117
addi	$31,$31,4
addu	$31,$t0,$31
TAG_117:

la		$t3,TAG_118
la		$t4,TAG_119
addi	$31,$0,12
jalr	$31,$t3
addi	$31,$31,4
lw		$31,-12288($31)
TAG_118:
jalr	$31,$t4
lw		$31,-12288($31)
lw		$31,0($31)
TAG_119:
lw		$31,0($31)
lw		$31,0($31)
beq		$31,$0,TAG_120
addi	$31,$31,4
sw		$31,4096($31)
TAG_120:

la		$t3,TAG_121
la		$t4,TAG_122
addi	$31,$0,20
jalr	$31,$t3
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_121:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_122:
lw		$31,-12288($31)
lw		$31,0($31)
beq		$31,$0,TAG_123
addu	$31,$t0,$31
addi	$31,$31,4
TAG_123:

la		$t3,TAG_124
la		$t4,TAG_125
addi	$31,$0,28
jalr	$31,$t3
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_124:
jalr	$31,$t4
addi	$31,$31,4
addu	$31,$t0,$31
TAG_125:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_126
lw		$31,0($31)
addu	$31,$31,$t0
TAG_126:

la		$t3,TAG_127
la		$t4,TAG_128
addi	$31,$0,24
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_127:
jalr	$31,$t4
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_128:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_129
lw		$31,0($31)
sw		$31,4096($31)
TAG_129:

la		$t3,TAG_130
la		$t4,TAG_131
addi	$31,$0,8
jalr	$31,$t3
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_130:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_131:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_132
addi	$31,$31,4
addi	$31,$31,4
TAG_132:

la		$t3,TAG_133
la		$t4,TAG_134
addi	$31,$0,0
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_133:
jalr	$31,$t4
addi	$31,$31,4
sw		$31,-8192($31)
TAG_134:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_135
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_135:

la		$t3,TAG_136
la		$t4,TAG_137
addi	$31,$0,28
jalr	$31,$t3
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_136:
jalr	$31,$t4
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_137:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$31,$31,4

la		$t3,TAG_138
la		$t4,TAG_139
addi	$31,$0,12
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_138:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_139:
lw		$31,-12288($31)
lw		$31,0($31)
addi	$31,$31,4

la		$t3,TAG_140
la		$t4,TAG_141
addi	$31,$0,0
jalr	$31,$t3
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_140:
jalr	$31,$t4
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_141:
lw		$31,-12288($31)
lw		$31,0($31)
la		$31,TAG_142
jr		$31
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_142:

la		$t3,TAG_143
la		$t4,TAG_144
addi	$31,$0,0
jalr	$31,$t3
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_143:
jalr	$31,$t4
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_144:
lw		$31,0($31)
lw		$31,0($31)
la		$31,TAG_145
jr		$31
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_145:

la		$t3,TAG_146
la		$t4,TAG_147
addi	$31,$0,28
jalr	$31,$t3
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_146:
jalr	$31,$t4
addi	$31,$31,4
lw		$31,-12288($31)
TAG_147:
lw		$31,-12288($31)
lw		$31,0($31)
la		$31,TAG_148
jalr	$t3,$31
addi	$31,$31,4
addu	$31,$31,$t0
TAG_148:

la		$t3,TAG_149
la		$t4,TAG_150
addi	$31,$0,8
jalr	$31,$t3
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_149:
jalr	$31,$t4
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_150:
lw		$31,0($31)
lw		$31,0($31)
la		$31,TAG_151
jalr	$t3,$31
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_151:

la		$t3,TAG_152
la		$t4,TAG_153
addi	$31,$0,8
jalr	$31,$t3
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_152:
jalr	$31,$t4
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_153:
lw		$31,0($31)
addu	$31,$t0,$31
lw		$31,0($31)

la		$t3,TAG_154
la		$t4,TAG_155
addi	$31,$0,12
jalr	$31,$t3
addi	$31,$31,4
lw		$31,-12288($31)
TAG_154:
jalr	$31,$t4
addu	$31,$t0,$31
addi	$31,$31,4
TAG_155:
lw		$31,-12288($31)
addu	$31,$t0,$31
lw		$31,0($31)

la		$t3,TAG_156
la		$t4,TAG_157
addi	$31,$0,16
jalr	$31,$t3
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_156:
jalr	$31,$t4
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_157:
lw		$31,-12288($31)
addu	$31,$t0,$31
sw		$31,4096($31)

la		$t3,TAG_158
la		$t4,TAG_159
addi	$31,$0,28
jalr	$31,$t3
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_158:
jalr	$31,$t4
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_159:
lw		$31,-12288($31)
addu	$31,$t0,$31
sw		$31,4096($31)

la		$t3,TAG_160
la		$t4,TAG_161
addi	$31,$0,20
jalr	$31,$t3
lw		$31,-12288($31)
addi	$31,$31,4
TAG_160:
jalr	$31,$t4
lw		$31,-12288($31)
lw		$31,0($31)
TAG_161:
lw		$31,0($31)
addu	$31,$t0,$31
addu	$31,$t0,$31

la		$t3,TAG_162
la		$t4,TAG_163
addi	$31,$0,20
jalr	$31,$t3
addi	$31,$31,4
sw		$31,-8192($31)
TAG_162:
jalr	$31,$t4
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_163:
lw		$31,-12288($31)
addu	$31,$t0,$31
addu	$31,$t0,$31

#--------------

addi	$t0,$0,2222
sw		$t0,2048($0)
addi	$t0,$0,3333
sw		$t0,2052($0)
addi	$t0,$0,4444
sw		$t0,2056($0)