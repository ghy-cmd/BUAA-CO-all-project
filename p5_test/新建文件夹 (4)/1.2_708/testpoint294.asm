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

la		$t3,TAG_2
addi	$31,$0,8
jal		TAG_0
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_0:
jal		TAG_1
addi	$31,$31,4
sw		$31,-8192($31)
TAG_1:
addu	$31,$31,$t2
jalr	$31,$t3
addi	$31,$31,4
lw		$31,-12288($31)
TAG_2:
la		$31,TAG_3
jalr	$t3,$31
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_3:

addi	$31,$0,20
jal		TAG_4
addi	$31,$31,4
addi	$31,$31,4
TAG_4:
jal		TAG_5
sw		$31,-8192($31)
addi	$31,$31,4
TAG_5:
addi	$31,$31,-12288
lw		$31,0($31)
lw		$31,0($31)

addi	$31,$0,12
jal		TAG_6
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_6:
jal		TAG_7
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_7:
addi	$31,$31,-12288
lw		$31,0($31)
lw		$31,0($31)

addi	$31,$0,12
jal		TAG_8
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_8:
jal		TAG_9
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_9:
addi	$31,$31,-12288
lw		$31,0($31)
sw		$31,4096($31)

addi	$31,$0,8
jal		TAG_10
sw		$31,-8192($31)
addi	$31,$31,4
TAG_10:
jal		TAG_11
lw		$31,-12288($31)
lw		$31,0($31)
TAG_11:
addi	$31,$31,4
lw		$31,0($31)
sw		$31,4096($31)

addi	$31,$0,20
jal		TAG_12
sw		$31,-8192($31)
addi	$31,$31,4
TAG_12:
jal		TAG_13
addu	$31,$t0,$31
addi	$31,$31,4
TAG_13:
addi	$31,$31,-12288
lw		$31,0($31)
addu	$31,$t0,$31

addi	$31,$0,16
jal		TAG_14
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_14:
jal		TAG_15
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_15:
addi	$31,$31,-12288
lw		$31,0($31)
addu	$31,$t0,$31

addi	$31,$0,28
jal		TAG_16
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_16:
jal		TAG_17
addi	$31,$31,4
addu	$31,$31,$t0
TAG_17:
addi	$31,$31,-12288
lw		$31,0($31)
addu	$31,$31,$t0

addi	$31,$0,0
jal		TAG_18
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_18:
jal		TAG_19
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_19:
addi	$31,$31,-12288
lw		$31,0($31)
addu	$31,$31,$t0

addi	$31,$0,8
jal		TAG_20
lw		$31,-12288($31)
addi	$31,$31,4
TAG_20:
jal		TAG_21
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_21:
addi	$31,$31,-12288
lw		$31,0($31)
beq		$31,$31,TAG_22
sw		$31,4096($31)
addu	$31,$t0,$31
TAG_22:

addi	$31,$0,4
jal		TAG_23
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_23:
jal		TAG_24
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_24:
addi	$31,$31,-12288
lw		$31,0($31)
beq		$31,$31,TAG_25
addi	$31,$31,4
addi	$31,$31,4
TAG_25:

addi	$31,$0,20
jal		TAG_26
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_26:
jal		TAG_27
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_27:
addi	$31,$31,-12288
lw		$31,0($31)
beq		$31,$0,TAG_28
lw		$31,0($31)
lw		$31,0($31)
TAG_28:

addi	$31,$0,0
jal		TAG_29
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_29:
jal		TAG_30
addi	$31,$31,4
addi	$31,$31,4
TAG_30:
addi	$31,$31,-12288
lw		$31,0($31)
beq		$31,$0,TAG_31
addu	$31,$t0,$31
lw		$31,0($31)
TAG_31:

addi	$31,$0,12
jal		TAG_32
lw		$31,-12288($31)
addi	$31,$31,4
TAG_32:
jal		TAG_33
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_33:
addi	$31,$31,-12288
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_34
lw		$31,0($31)
lw		$31,0($31)
TAG_34:

addi	$31,$0,16
jal		TAG_35
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_35:
jal		TAG_36
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_36:
addi	$31,$31,4
lw		$31,0($31)
addi	$t1,$31,0
beq		$t1,$31,TAG_37
sw		$31,4096($31)
lw		$31,0($31)
TAG_37:

addi	$31,$0,24
jal		TAG_38
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_38:
jal		TAG_39
addu	$31,$t0,$31
addi	$31,$31,4
TAG_39:
addi	$31,$31,-12288
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_40
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_40:

addi	$31,$0,20
jal		TAG_41
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_41:
jal		TAG_42
addi	$31,$31,4
addi	$31,$31,4
TAG_42:
addi	$31,$31,-12288
lw		$31,0($31)
addi	$t1,$31,1
beq		$31,$t1,TAG_43
lw		$31,0($31)
sw		$31,4096($31)
TAG_43:

addi	$31,$0,4
jal		TAG_44
addi	$31,$31,4
addi	$31,$31,4
TAG_44:
jal		TAG_45
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_45:
addi	$31,$31,4
lw		$31,0($31)
addi	$31,$31,4

addi	$31,$0,4
jal		TAG_46
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_46:
jal		TAG_47
lw		$31,-12288($31)
addi	$31,$31,4
TAG_47:
addi	$31,$31,4
lw		$31,0($31)
addi	$31,$31,4

addi	$31,$0,12
jal		TAG_48
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_48:
jal		TAG_49
addu	$31,$31,$t0
addi	$31,$31,4
TAG_49:
addi	$31,$31,-12288
lw		$31,0($31)
la		$31,TAG_50
jr		$31
lw		$31,-12288($31)
addi	$31,$31,4
TAG_50:

addi	$31,$0,12
jal		TAG_51
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_51:
jal		TAG_52
addi	$31,$31,4
addu	$31,$t0,$31
TAG_52:
addi	$31,$31,-12288
lw		$31,0($31)
la		$31,TAG_53
jr		$31
addi	$31,$31,4
addu	$31,$t0,$31
TAG_53:

addi	$31,$0,0
jal		TAG_54
lw		$31,-12288($31)
lw		$31,0($31)
TAG_54:
jal		TAG_55
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_55:
addi	$31,$31,4
lw		$31,0($31)
la		$31,TAG_56
jalr	$t3,$31
addi	$31,$31,4
lw		$31,-12288($31)
TAG_56:

addi	$31,$0,12
jal		TAG_57
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_57:
jal		TAG_58
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_58:
addi	$31,$31,-12288
lw		$31,0($31)
la		$31,TAG_59
jalr	$t3,$31
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_59:

addi	$31,$0,24
jal		TAG_60
lw		$31,-12288($31)
lw		$31,0($31)
TAG_60:
jal		TAG_61
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_61:
addi	$31,$31,-12288
addu	$31,$t0,$31
lw		$31,0($31)

addi	$31,$0,20
jal		TAG_62
addi	$31,$31,4
sw		$31,-8192($31)
TAG_62:
jal		TAG_63
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_63:
addi	$31,$31,-12288
addu	$31,$t0,$31
lw		$31,0($31)

addi	$31,$0,16
jal		TAG_64
addi	$31,$31,4
sw		$31,-8192($31)
TAG_64:
jal		TAG_65
lw		$31,-12288($31)
lw		$31,0($31)
TAG_65:
addi	$31,$31,4
addu	$31,$t0,$31
sw		$31,4096($31)

addi	$31,$0,16
jal		TAG_66
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_66:
jal		TAG_67
addu	$31,$31,$t0
addi	$31,$31,4
TAG_67:
addi	$31,$31,-12288
addu	$31,$t0,$31
sw		$31,4096($31)

addi	$31,$0,20
jal		TAG_68
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_68:
jal		TAG_69
addi	$31,$31,4
lw		$31,-12288($31)
TAG_69:
addi	$31,$31,-12288
addu	$31,$t0,$31
addu	$31,$t0,$31

addi	$31,$0,0
jal		TAG_70
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_70:
jal		TAG_71
lw		$31,-12288($31)
addi	$31,$31,4
TAG_71:
addi	$31,$31,4
addu	$31,$t0,$31
addu	$31,$t0,$31

addi	$31,$0,28
jal		TAG_72
addi	$31,$31,4
addu	$31,$t0,$31
TAG_72:
jal		TAG_73
addu	$31,$t0,$31
addi	$31,$31,4
TAG_73:
addi	$31,$31,-12288
addu	$31,$t0,$31
addu	$31,$31,$t0

addi	$31,$0,28
jal		TAG_74
addi	$31,$31,4
addu	$31,$t0,$31
TAG_74:
jal		TAG_75
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_75:
addi	$31,$31,-12288
addu	$31,$t0,$31
addu	$31,$31,$t0

addi	$31,$0,28
jal		TAG_76
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_76:
jal		TAG_77
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_77:
addi	$31,$31,-12288
addu	$31,$t0,$31
beq		$31,$31,TAG_78
addu	$31,$t0,$31
addi	$31,$31,4
TAG_78:

addi	$31,$0,4
jal		TAG_79
addu	$31,$t0,$31
addi	$31,$31,4
TAG_79:
jal		TAG_80
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_80:
addi	$31,$31,-12288
addu	$31,$t0,$31
beq		$31,$31,TAG_81
addi	$31,$31,4
addu	$31,$t0,$31
TAG_81:

addi	$31,$0,28
jal		TAG_82
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_82:
jal		TAG_83
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_83:
addi	$31,$31,-12288
addu	$31,$t0,$31
beq		$31,$0,TAG_84
sw		$31,4096($31)
sw		$31,4096($31)
TAG_84:

addi	$31,$0,4
jal		TAG_85
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_85:
jal		TAG_86
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_86:
addi	$31,$31,-12288
addu	$31,$t0,$31
beq		$31,$0,TAG_87
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_87:

addi	$31,$0,12
jal		TAG_88
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_88:
jal		TAG_89
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_89:
addi	$31,$31,-12288
addu	$31,$t0,$31
addi	$t1,$31,0
beq		$t1,$31,TAG_90
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_90:

addi	$31,$0,8
jal		TAG_91
addi	$31,$31,4
addu	$31,$t0,$31
TAG_91:
jal		TAG_92
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_92:
addi	$31,$31,-12288
addu	$31,$t0,$31
addi	$t1,$31,0
beq		$t1,$31,TAG_93
sw		$31,4096($31)
addu	$31,$31,$t0
TAG_93:

addi	$31,$0,8
jal		TAG_94
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_94:
jal		TAG_95
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_95:
addi	$31,$31,4
addu	$31,$t0,$31
addi	$t1,$31,1
beq		$31,$t1,TAG_96
sw		$31,4096($31)
addu	$31,$31,$t0
TAG_96:

addi	$31,$0,16
jal		TAG_97
addu	$31,$31,$t0
addi	$31,$31,4
TAG_97:
jal		TAG_98
addi	$31,$31,4
addi	$31,$31,4
TAG_98:
addi	$31,$31,-12288
addu	$31,$t0,$31
addi	$t1,$31,1
beq		$31,$t1,TAG_99
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_99:

addi	$31,$0,8
jal		TAG_100
addi	$31,$31,4
addi	$31,$31,4
TAG_100:
jal		TAG_101
lw		$31,-12288($31)
addi	$31,$31,4
TAG_101:
addi	$31,$31,4
addu	$31,$t0,$31
addi	$31,$31,4

addi	$31,$0,12
jal		TAG_102
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_102:
jal		TAG_103
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_103:
addi	$31,$31,-12288
addu	$31,$t0,$31
addi	$31,$31,4

addi	$31,$0,8
jal		TAG_104
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_104:
jal		TAG_105
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_105:
addi	$31,$31,-12288
addu	$31,$t0,$31
la		$31,TAG_106
jr		$31
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_106:

addi	$31,$0,4
jal		TAG_107
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_107:
jal		TAG_108
lw		$31,-12288($31)
addi	$31,$31,4
TAG_108:
addi	$31,$31,4
addu	$31,$t0,$31
la		$31,TAG_109
jr		$31
sw		$31,-8192($31)
addu	$31,$t0,$31
TAG_109:

addi	$31,$0,16
jal		TAG_110
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_110:
jal		TAG_111
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_111:
addi	$31,$31,-12288
addu	$31,$t0,$31
la		$31,TAG_112
jalr	$t3,$31
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_112:

addi	$31,$0,4
jal		TAG_113
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_113:
jal		TAG_114
addi	$31,$31,4
addi	$31,$31,4
TAG_114:
addi	$31,$31,-12288
addu	$31,$t0,$31
la		$31,TAG_115
jalr	$t3,$31
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_115:

addi	$31,$0,4
jal		TAG_116
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_116:
jal		TAG_117
addi	$31,$31,4
addi	$31,$31,4
TAG_117:
addi	$31,$31,-12288
addu	$31,$31,$t0
lw		$31,0($31)

addi	$31,$0,28
jal		TAG_118
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_118:
jal		TAG_119
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_119:
addi	$31,$31,-12288
addu	$31,$31,$t0
lw		$31,0($31)

addi	$31,$0,4
jal		TAG_120
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_120:
jal		TAG_121
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_121:
addi	$31,$31,4
addu	$31,$31,$t0
sw		$31,4096($31)

addi	$31,$0,8
jal		TAG_122
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_122:
jal		TAG_123
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_123:
addi	$31,$31,-12288
addu	$31,$31,$t0
sw		$31,4096($31)

addi	$31,$0,12
jal		TAG_124
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_124:
jal		TAG_125
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_125:
addi	$31,$31,-12288
addu	$31,$31,$t0
addu	$31,$t0,$31

addi	$31,$0,28
jal		TAG_126
addu	$31,$31,$t0
lw		$31,-12288($31)
TAG_126:
jal		TAG_127
addu	$31,$t0,$31
lw		$31,-12288($31)
TAG_127:
addi	$31,$31,-12288
addu	$31,$31,$t0
addu	$31,$t0,$31

addi	$31,$0,12
jal		TAG_128
addi	$31,$31,4
addu	$31,$31,$t0
TAG_128:
jal		TAG_129
addi	$31,$31,4
addu	$31,$t0,$31
TAG_129:
addi	$31,$31,-12288
addu	$31,$31,$t0
addu	$31,$31,$t0

addi	$31,$0,24
jal		TAG_130
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_130:
jal		TAG_131
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_131:
addi	$31,$31,-12288
addu	$31,$31,$t0
addu	$31,$31,$t0

addi	$31,$0,28
jal		TAG_132
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_132:
jal		TAG_133
addu	$31,$t0,$31
addi	$31,$31,4
TAG_133:
addi	$31,$31,-12288
addu	$31,$31,$t0
beq		$31,$31,TAG_134
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_134:

addi	$31,$0,24
jal		TAG_135
sw		$31,-8192($31)
addi	$31,$31,4
TAG_135:
jal		TAG_136
lw		$31,-12288($31)
sw		$31,4096($31)
TAG_136:
addi	$31,$31,4
addu	$31,$31,$t0
beq		$31,$31,TAG_137
addu	$31,$t0,$31
sw		$31,4096($31)
TAG_137:

addi	$31,$0,0
jal		TAG_138
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_138:
jal		TAG_139
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_139:
addi	$31,$31,-12288
addu	$31,$31,$t0
beq		$31,$0,TAG_140
lw		$31,0($31)
addi	$31,$31,4
TAG_140:

addi	$31,$0,4
jal		TAG_141
lw		$31,-12288($31)
addu	$31,$31,$t0
TAG_141:
jal		TAG_142
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_142:
addi	$31,$31,-12288
addu	$31,$31,$t0
beq		$31,$0,TAG_143
addu	$31,$t0,$31
addu	$31,$31,$t0
TAG_143:

addi	$31,$0,28
jal		TAG_144
addi	$31,$31,4
sw		$31,-8192($31)
TAG_144:
jal		TAG_145
addu	$31,$31,$t0
addi	$31,$31,4
TAG_145:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$t1,$31,0
beq		$t1,$31,TAG_146
lw		$31,0($31)
addu	$31,$31,$t0
TAG_146:

addi	$31,$0,8
jal		TAG_147
addu	$31,$31,$t0
sw		$31,-8192($31)
TAG_147:
jal		TAG_148
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_148:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$t1,$31,0
beq		$t1,$31,TAG_149
sw		$31,4096($31)
addi	$31,$31,4
TAG_149:

addi	$31,$0,28
jal		TAG_150
addu	$31,$t0,$31
addi	$31,$31,4
TAG_150:
jal		TAG_151
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_151:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$t1,$31,1
beq		$31,$t1,TAG_152
addi	$31,$31,4
addu	$31,$31,$t0
TAG_152:

addi	$31,$0,20
jal		TAG_153
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_153:
jal		TAG_154
sw		$31,-8192($31)
lw		$31,-12288($31)
TAG_154:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$t1,$31,1
beq		$31,$t1,TAG_155
addu	$31,$31,$t0
lw		$31,0($31)
TAG_155:

addi	$31,$0,12
jal		TAG_156
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_156:
jal		TAG_157
addi	$31,$31,4
addu	$31,$t0,$31
TAG_157:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$31,$31,4

addi	$31,$0,4
jal		TAG_158
sw		$31,-8192($31)
sw		$31,-8192($31)
TAG_158:
jal		TAG_159
sw		$31,-8192($31)
addu	$31,$31,$t0
TAG_159:
addi	$31,$31,-12288
addu	$31,$31,$t0
addi	$31,$31,4

addi	$31,$0,4
jal		TAG_160
lw		$31,-12288($31)
lw		$31,0($31)
TAG_160:
jal		TAG_161
addu	$31,$31,$t0
addu	$31,$31,$t0
TAG_161:
addi	$31,$31,-12288
addu	$31,$31,$t0
la		$31,TAG_162
jr		$31
addi	$31,$31,4
lw		$31,-12288($31)
TAG_162:

addi	$31,$0,12
jal		TAG_163
addu	$31,$31,$t0
addu	$31,$t0,$31
TAG_163:
jal		TAG_164
lw		$31,-12288($31)
addu	$31,$t0,$31
TAG_164:
addi	$31,$31,4
addu	$31,$31,$t0
la		$31,TAG_165
jr		$31
addi	$31,$31,4
addu	$31,$t0,$31
TAG_165:

addi	$31,$0,24
jal		TAG_166
addi	$31,$31,4
lw		$31,-12288($31)
TAG_166:
jal		TAG_167
addu	$31,$t0,$31
sw		$31,-8192($31)
TAG_167:
addi	$31,$31,-12288
addu	$31,$31,$t0
la		$31,TAG_168
jalr	$t3,$31
addu	$31,$t0,$31
addu	$31,$t0,$31
TAG_168:

#--------------

addi	$t0,$0,2222
sw		$t0,2048($0)
addi	$t0,$0,3333
sw		$t0,2052($0)
addi	$t0,$0,4444
sw		$t0,2056($0)