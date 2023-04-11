/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static int ng0[] = {8, 0};
static const char *ng1 = "code.txt";
static unsigned int ng2[] = {12288U, 0U};
static int ng3[] = {4, 0};
static int ng4[] = {2, 0};
static unsigned int ng5[] = {0U, 0U};



static void Cont_40_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 7008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng0)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 8976);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 8816);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_41_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 7256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 6088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 8832);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_43_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    unsigned int t53;
    unsigned int t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    char *t114;
    unsigned int t115;
    unsigned int t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    char *t130;
    unsigned int t131;
    unsigned int t132;
    char *t133;
    char *t134;
    char *t135;
    char *t136;
    char *t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    unsigned int t141;
    unsigned int t142;
    char *t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    char *t148;
    char *t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    unsigned int t154;
    unsigned int t155;
    char *t156;
    unsigned int t157;
    unsigned int t158;
    char *t159;
    char *t160;
    char *t161;
    char *t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;
    unsigned int t167;
    unsigned int t168;
    char *t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    char *t174;
    char *t175;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    char *t185;
    char *t186;
    char *t187;
    char *t188;
    char *t189;
    unsigned int t190;
    unsigned int t191;
    char *t192;
    unsigned int t193;
    unsigned int t194;
    char *t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;

LAB0:    t1 = (t0 + 7504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 10000);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t3 + 4);
    t11 = *((unsigned int *)t3);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t2, 0, 0);
    t16 = (t0 + 9936);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t20, 0, 8);
    t21 = 2U;
    t22 = t21;
    t23 = (t3 + 4);
    t24 = *((unsigned int *)t3);
    t21 = (t21 & t24);
    t25 = *((unsigned int *)t23);
    t22 = (t22 & t25);
    t21 = (t21 >> 1);
    t22 = (t22 >> 1);
    t26 = (t20 + 4);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 | t21);
    t28 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t28 | t22);
    xsi_driver_vfirst_trans(t16, 0, 0);
    t29 = (t0 + 9872);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memset(t33, 0, 8);
    t34 = 4U;
    t35 = t34;
    t36 = (t3 + 4);
    t37 = *((unsigned int *)t3);
    t34 = (t34 & t37);
    t38 = *((unsigned int *)t36);
    t35 = (t35 & t38);
    t34 = (t34 >> 2);
    t35 = (t35 >> 2);
    t39 = (t33 + 4);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t40 | t34);
    t41 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t41 | t35);
    xsi_driver_vfirst_trans(t29, 0, 0);
    t42 = (t0 + 9808);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    memset(t46, 0, 8);
    t47 = 8U;
    t48 = t47;
    t49 = (t3 + 4);
    t50 = *((unsigned int *)t3);
    t47 = (t47 & t50);
    t51 = *((unsigned int *)t49);
    t48 = (t48 & t51);
    t47 = (t47 >> 3);
    t48 = (t48 >> 3);
    t52 = (t46 + 4);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t53 | t47);
    t54 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t54 | t48);
    xsi_driver_vfirst_trans(t42, 0, 0);
    t55 = (t0 + 9744);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    t58 = (t57 + 56U);
    t59 = *((char **)t58);
    memset(t59, 0, 8);
    t60 = 16U;
    t61 = t60;
    t62 = (t3 + 4);
    t63 = *((unsigned int *)t3);
    t60 = (t60 & t63);
    t64 = *((unsigned int *)t62);
    t61 = (t61 & t64);
    t60 = (t60 >> 4);
    t61 = (t61 >> 4);
    t65 = (t59 + 4);
    t66 = *((unsigned int *)t59);
    *((unsigned int *)t59) = (t66 | t60);
    t67 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t67 | t61);
    xsi_driver_vfirst_trans(t55, 0, 0);
    t68 = (t0 + 9680);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    memset(t72, 0, 8);
    t73 = 32U;
    t74 = t73;
    t75 = (t3 + 4);
    t76 = *((unsigned int *)t3);
    t73 = (t73 & t76);
    t77 = *((unsigned int *)t75);
    t74 = (t74 & t77);
    t73 = (t73 >> 5);
    t74 = (t74 >> 5);
    t78 = (t72 + 4);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t79 | t73);
    t80 = *((unsigned int *)t78);
    *((unsigned int *)t78) = (t80 | t74);
    xsi_driver_vfirst_trans(t68, 0, 0);
    t81 = (t0 + 9616);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    t84 = (t83 + 56U);
    t85 = *((char **)t84);
    memset(t85, 0, 8);
    t86 = 64U;
    t87 = t86;
    t88 = (t3 + 4);
    t89 = *((unsigned int *)t3);
    t86 = (t86 & t89);
    t90 = *((unsigned int *)t88);
    t87 = (t87 & t90);
    t86 = (t86 >> 6);
    t87 = (t87 >> 6);
    t91 = (t85 + 4);
    t92 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t92 | t86);
    t93 = *((unsigned int *)t91);
    *((unsigned int *)t91) = (t93 | t87);
    xsi_driver_vfirst_trans(t81, 0, 0);
    t94 = (t0 + 9552);
    t95 = (t94 + 56U);
    t96 = *((char **)t95);
    t97 = (t96 + 56U);
    t98 = *((char **)t97);
    memset(t98, 0, 8);
    t99 = 128U;
    t100 = t99;
    t101 = (t3 + 4);
    t102 = *((unsigned int *)t3);
    t99 = (t99 & t102);
    t103 = *((unsigned int *)t101);
    t100 = (t100 & t103);
    t99 = (t99 >> 7);
    t100 = (t100 >> 7);
    t104 = (t98 + 4);
    t105 = *((unsigned int *)t98);
    *((unsigned int *)t98) = (t105 | t99);
    t106 = *((unsigned int *)t104);
    *((unsigned int *)t104) = (t106 | t100);
    xsi_driver_vfirst_trans(t94, 0, 0);
    t107 = (t0 + 9488);
    t108 = (t107 + 56U);
    t109 = *((char **)t108);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    memset(t111, 0, 8);
    t112 = 256U;
    t113 = t112;
    t114 = (t3 + 4);
    t115 = *((unsigned int *)t3);
    t112 = (t112 & t115);
    t116 = *((unsigned int *)t114);
    t113 = (t113 & t116);
    t112 = (t112 >> 8);
    t113 = (t113 >> 8);
    t117 = (t111 + 4);
    t118 = *((unsigned int *)t111);
    *((unsigned int *)t111) = (t118 | t112);
    t119 = *((unsigned int *)t117);
    *((unsigned int *)t117) = (t119 | t113);
    xsi_driver_vfirst_trans(t107, 0, 0);
    t120 = (t0 + 9424);
    t121 = (t120 + 56U);
    t122 = *((char **)t121);
    t123 = (t122 + 56U);
    t124 = *((char **)t123);
    memset(t124, 0, 8);
    t125 = 512U;
    t126 = t125;
    t127 = (t3 + 4);
    t128 = *((unsigned int *)t3);
    t125 = (t125 & t128);
    t129 = *((unsigned int *)t127);
    t126 = (t126 & t129);
    t125 = (t125 >> 9);
    t126 = (t126 >> 9);
    t130 = (t124 + 4);
    t131 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t131 | t125);
    t132 = *((unsigned int *)t130);
    *((unsigned int *)t130) = (t132 | t126);
    xsi_driver_vfirst_trans(t120, 0, 0);
    t133 = (t0 + 9360);
    t134 = (t133 + 56U);
    t135 = *((char **)t134);
    t136 = (t135 + 56U);
    t137 = *((char **)t136);
    memset(t137, 0, 8);
    t138 = 1024U;
    t139 = t138;
    t140 = (t3 + 4);
    t141 = *((unsigned int *)t3);
    t138 = (t138 & t141);
    t142 = *((unsigned int *)t140);
    t139 = (t139 & t142);
    t138 = (t138 >> 10);
    t139 = (t139 >> 10);
    t143 = (t137 + 4);
    t144 = *((unsigned int *)t137);
    *((unsigned int *)t137) = (t144 | t138);
    t145 = *((unsigned int *)t143);
    *((unsigned int *)t143) = (t145 | t139);
    xsi_driver_vfirst_trans(t133, 0, 0);
    t146 = (t0 + 9296);
    t147 = (t146 + 56U);
    t148 = *((char **)t147);
    t149 = (t148 + 56U);
    t150 = *((char **)t149);
    memset(t150, 0, 8);
    t151 = 2048U;
    t152 = t151;
    t153 = (t3 + 4);
    t154 = *((unsigned int *)t3);
    t151 = (t151 & t154);
    t155 = *((unsigned int *)t153);
    t152 = (t152 & t155);
    t151 = (t151 >> 11);
    t152 = (t152 >> 11);
    t156 = (t150 + 4);
    t157 = *((unsigned int *)t150);
    *((unsigned int *)t150) = (t157 | t151);
    t158 = *((unsigned int *)t156);
    *((unsigned int *)t156) = (t158 | t152);
    xsi_driver_vfirst_trans(t146, 0, 0);
    t159 = (t0 + 9232);
    t160 = (t159 + 56U);
    t161 = *((char **)t160);
    t162 = (t161 + 56U);
    t163 = *((char **)t162);
    memset(t163, 0, 8);
    t164 = 4096U;
    t165 = t164;
    t166 = (t3 + 4);
    t167 = *((unsigned int *)t3);
    t164 = (t164 & t167);
    t168 = *((unsigned int *)t166);
    t165 = (t165 & t168);
    t164 = (t164 >> 12);
    t165 = (t165 >> 12);
    t169 = (t163 + 4);
    t170 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t170 | t164);
    t171 = *((unsigned int *)t169);
    *((unsigned int *)t169) = (t171 | t165);
    xsi_driver_vfirst_trans(t159, 0, 0);
    t172 = (t0 + 9168);
    t173 = (t172 + 56U);
    t174 = *((char **)t173);
    t175 = (t174 + 56U);
    t176 = *((char **)t175);
    memset(t176, 0, 8);
    t177 = 8192U;
    t178 = t177;
    t179 = (t3 + 4);
    t180 = *((unsigned int *)t3);
    t177 = (t177 & t180);
    t181 = *((unsigned int *)t179);
    t178 = (t178 & t181);
    t177 = (t177 >> 13);
    t178 = (t178 >> 13);
    t182 = (t176 + 4);
    t183 = *((unsigned int *)t176);
    *((unsigned int *)t176) = (t183 | t177);
    t184 = *((unsigned int *)t182);
    *((unsigned int *)t182) = (t184 | t178);
    xsi_driver_vfirst_trans(t172, 0, 0);
    t185 = (t0 + 9104);
    t186 = (t185 + 56U);
    t187 = *((char **)t186);
    t188 = (t187 + 56U);
    t189 = *((char **)t188);
    memset(t189, 0, 8);
    t190 = 16384U;
    t191 = t190;
    t192 = (t3 + 4);
    t193 = *((unsigned int *)t3);
    t190 = (t190 & t193);
    t194 = *((unsigned int *)t192);
    t191 = (t191 & t194);
    t190 = (t190 >> 14);
    t191 = (t191 >> 14);
    t195 = (t189 + 4);
    t196 = *((unsigned int *)t189);
    *((unsigned int *)t189) = (t196 | t190);
    t197 = *((unsigned int *)t195);
    *((unsigned int *)t195) = (t197 | t191);
    xsi_driver_vfirst_trans(t185, 0, 0);
    t198 = (t0 + 8848);
    *((int *)t198) = 1;

LAB1:    return;
}

static void Initial_44_3(char *t0)
{
    char *t1;
    char *t2;

LAB0:
LAB2:    t1 = (t0 + 5928);
    xsi_vlogfile_readmemh(ng1, 0, t1, 0, 0, 0, 0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}

static void Cont_51_4(char *t0)
{
    char t3[8];
    char t4[8];
    char t23[8];
    char t24[8];
    char t28[8];
    char t72[8];
    char t75[8];
    char t76[8];
    char t81[8];
    char t82[8];
    char t85[8];
    char t99[8];
    char t106[8];
    char t145[8];
    char t147[8];
    char t157[8];
    char t171[8];
    char t172[8];
    char t175[8];
    char t189[8];
    char t196[8];
    char t244[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t25;
    char *t26;
    char *t27;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    int t51;
    int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    char *t70;
    char *t71;
    char *t73;
    char *t74;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t83;
    char *t84;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    char *t91;
    char *t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    char *t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    char *t140;
    char *t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    char *t146;
    char *t148;
    char *t149;
    char *t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    char *t158;
    char *t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    char *t173;
    char *t174;
    unsigned int t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    char *t181;
    char *t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    char *t187;
    char *t188;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    char *t195;
    unsigned int t197;
    unsigned int t198;
    unsigned int t199;
    char *t200;
    char *t201;
    char *t202;
    unsigned int t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    char *t210;
    char *t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t224;
    unsigned int t225;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    char *t230;
    char *t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    char *t235;
    char *t236;
    unsigned int t237;
    unsigned int t238;
    unsigned int t239;
    unsigned int t240;
    char *t241;
    char *t242;
    char *t243;
    char *t245;
    char *t246;
    char *t247;
    char *t248;
    char *t249;
    char *t250;

LAB0:    t1 = (t0 + 8000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    t21 = *((unsigned int *)t12);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t23, 8);

LAB16:    t245 = (t0 + 10064);
    t246 = (t245 + 56U);
    t247 = *((char **)t246);
    t248 = (t247 + 56U);
    t249 = *((char **)t248);
    memcpy(t249, t3, 8);
    xsi_driver_vfirst_trans(t245, 0, 31);
    t250 = (t0 + 8864);
    *((int *)t250) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 6088);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    goto LAB9;

LAB10:    t25 = (t0 + 2168U);
    t26 = *((char **)t25);
    t25 = (t0 + 2008U);
    t27 = *((char **)t25);
    t29 = *((unsigned int *)t26);
    t30 = *((unsigned int *)t27);
    t31 = (t29 & t30);
    *((unsigned int *)t28) = t31;
    t25 = (t26 + 4);
    t32 = (t27 + 4);
    t33 = (t28 + 4);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t32);
    t36 = (t34 | t35);
    *((unsigned int *)t33) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 != 0);
    if (t38 == 1)
        goto LAB17;

LAB18:
LAB19:    memset(t24, 0, 8);
    t59 = (t28 + 4);
    t60 = *((unsigned int *)t59);
    t61 = (~(t60));
    t62 = *((unsigned int *)t28);
    t63 = (t62 & t61);
    t64 = (t63 & 1U);
    if (t64 != 0)
        goto LAB20;

LAB21:    if (*((unsigned int *)t59) != 0)
        goto LAB22;

LAB23:    t66 = (t24 + 4);
    t67 = *((unsigned int *)t24);
    t68 = *((unsigned int *)t66);
    t69 = (t67 || t68);
    if (t69 > 0)
        goto LAB24;

LAB25:    t77 = *((unsigned int *)t24);
    t78 = (~(t77));
    t79 = *((unsigned int *)t66);
    t80 = (t78 || t79);
    if (t80 > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t66) > 0)
        goto LAB28;

LAB29:    if (*((unsigned int *)t24) > 0)
        goto LAB30;

LAB31:    memcpy(t23, t81, 8);

LAB32:    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t18, 32, t23, 32);
    goto LAB16;

LAB14:    memcpy(t3, t18, 8);
    goto LAB16;

LAB17:    t39 = *((unsigned int *)t28);
    t40 = *((unsigned int *)t33);
    *((unsigned int *)t28) = (t39 | t40);
    t41 = (t26 + 4);
    t42 = (t27 + 4);
    t43 = *((unsigned int *)t26);
    t44 = (~(t43));
    t45 = *((unsigned int *)t41);
    t46 = (~(t45));
    t47 = *((unsigned int *)t27);
    t48 = (~(t47));
    t49 = *((unsigned int *)t42);
    t50 = (~(t49));
    t51 = (t44 & t46);
    t52 = (t48 & t50);
    t53 = (~(t51));
    t54 = (~(t52));
    t55 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t55 & t53);
    t56 = *((unsigned int *)t33);
    *((unsigned int *)t33) = (t56 & t54);
    t57 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t57 & t53);
    t58 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t58 & t54);
    goto LAB19;

LAB20:    *((unsigned int *)t24) = 1;
    goto LAB23;

LAB22:    t65 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB23;

LAB24:    t70 = (t0 + 1528U);
    t71 = *((char **)t70);
    t70 = ((char*)((ng3)));
    memset(t72, 0, 8);
    xsi_vlog_unsigned_add(t72, 32, t71, 32, t70, 32);
    t73 = (t0 + 1048U);
    t74 = *((char **)t73);
    t73 = ((char*)((ng4)));
    memset(t75, 0, 8);
    xsi_vlog_unsigned_lshift(t75, 32, t74, 32, t73, 32);
    memset(t76, 0, 8);
    xsi_vlog_unsigned_add(t76, 32, t72, 32, t75, 32);
    goto LAB25;

LAB26:    t83 = (t0 + 4248U);
    t84 = *((char **)t83);
    memset(t85, 0, 8);
    t83 = (t84 + 4);
    t86 = *((unsigned int *)t83);
    t87 = (~(t86));
    t88 = *((unsigned int *)t84);
    t89 = (t88 & t87);
    t90 = (t89 & 1U);
    if (t90 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t83) != 0)
        goto LAB35;

LAB36:    t92 = (t85 + 4);
    t93 = *((unsigned int *)t85);
    t94 = (!(t93));
    t95 = *((unsigned int *)t92);
    t96 = (t94 || t95);
    if (t96 > 0)
        goto LAB37;

LAB38:    memcpy(t106, t85, 8);

LAB39:    memset(t82, 0, 8);
    t134 = (t106 + 4);
    t135 = *((unsigned int *)t134);
    t136 = (~(t135));
    t137 = *((unsigned int *)t106);
    t138 = (t137 & t136);
    t139 = (t138 & 1U);
    if (t139 != 0)
        goto LAB47;

LAB48:    if (*((unsigned int *)t134) != 0)
        goto LAB49;

LAB50:    t141 = (t82 + 4);
    t142 = *((unsigned int *)t82);
    t143 = *((unsigned int *)t141);
    t144 = (t142 || t143);
    if (t144 > 0)
        goto LAB51;

LAB52:    t167 = *((unsigned int *)t82);
    t168 = (~(t167));
    t169 = *((unsigned int *)t141);
    t170 = (t168 || t169);
    if (t170 > 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t141) > 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t82) > 0)
        goto LAB57;

LAB58:    memcpy(t81, t171, 8);

LAB59:    goto LAB27;

LAB28:    xsi_vlog_unsigned_bit_combine(t23, 32, t76, 32, t81, 32);
    goto LAB32;

LAB30:    memcpy(t23, t76, 8);
    goto LAB32;

LAB33:    *((unsigned int *)t85) = 1;
    goto LAB36;

LAB35:    t91 = (t85 + 4);
    *((unsigned int *)t85) = 1;
    *((unsigned int *)t91) = 1;
    goto LAB36;

LAB37:    t97 = (t0 + 4408U);
    t98 = *((char **)t97);
    memset(t99, 0, 8);
    t97 = (t98 + 4);
    t100 = *((unsigned int *)t97);
    t101 = (~(t100));
    t102 = *((unsigned int *)t98);
    t103 = (t102 & t101);
    t104 = (t103 & 1U);
    if (t104 != 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t97) != 0)
        goto LAB42;

LAB43:    t107 = *((unsigned int *)t85);
    t108 = *((unsigned int *)t99);
    t109 = (t107 | t108);
    *((unsigned int *)t106) = t109;
    t110 = (t85 + 4);
    t111 = (t99 + 4);
    t112 = (t106 + 4);
    t113 = *((unsigned int *)t110);
    t114 = *((unsigned int *)t111);
    t115 = (t113 | t114);
    *((unsigned int *)t112) = t115;
    t116 = *((unsigned int *)t112);
    t117 = (t116 != 0);
    if (t117 == 1)
        goto LAB44;

LAB45:
LAB46:    goto LAB39;

LAB40:    *((unsigned int *)t99) = 1;
    goto LAB43;

LAB42:    t105 = (t99 + 4);
    *((unsigned int *)t99) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB43;

LAB44:    t118 = *((unsigned int *)t106);
    t119 = *((unsigned int *)t112);
    *((unsigned int *)t106) = (t118 | t119);
    t120 = (t85 + 4);
    t121 = (t99 + 4);
    t122 = *((unsigned int *)t120);
    t123 = (~(t122));
    t124 = *((unsigned int *)t85);
    t125 = (t124 & t123);
    t126 = *((unsigned int *)t121);
    t127 = (~(t126));
    t128 = *((unsigned int *)t99);
    t129 = (t128 & t127);
    t130 = (~(t125));
    t131 = (~(t129));
    t132 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t132 & t130);
    t133 = *((unsigned int *)t112);
    *((unsigned int *)t112) = (t133 & t131);
    goto LAB46;

LAB47:    *((unsigned int *)t82) = 1;
    goto LAB50;

LAB49:    t140 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t140) = 1;
    goto LAB50;

LAB51:    t146 = ((char*)((ng5)));
    t148 = (t0 + 1208U);
    t149 = *((char **)t148);
    memset(t147, 0, 8);
    t148 = (t147 + 4);
    t150 = (t149 + 4);
    t151 = *((unsigned int *)t149);
    t152 = (t151 >> 0);
    *((unsigned int *)t147) = t152;
    t153 = *((unsigned int *)t150);
    t154 = (t153 >> 0);
    *((unsigned int *)t148) = t154;
    t155 = *((unsigned int *)t147);
    *((unsigned int *)t147) = (t155 & 67108863U);
    t156 = *((unsigned int *)t148);
    *((unsigned int *)t148) = (t156 & 67108863U);
    t158 = (t0 + 1528U);
    t159 = *((char **)t158);
    memset(t157, 0, 8);
    t158 = (t157 + 4);
    t160 = (t159 + 4);
    t161 = *((unsigned int *)t159);
    t162 = (t161 >> 28);
    *((unsigned int *)t157) = t162;
    t163 = *((unsigned int *)t160);
    t164 = (t163 >> 28);
    *((unsigned int *)t158) = t164;
    t165 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t165 & 15U);
    t166 = *((unsigned int *)t158);
    *((unsigned int *)t158) = (t166 & 15U);
    xsi_vlogtype_concat(t145, 32, 32, 3U, t157, 4, t147, 26, t146, 2);
    goto LAB52;

LAB53:    t173 = (t0 + 4568U);
    t174 = *((char **)t173);
    memset(t175, 0, 8);
    t173 = (t174 + 4);
    t176 = *((unsigned int *)t173);
    t177 = (~(t176));
    t178 = *((unsigned int *)t174);
    t179 = (t178 & t177);
    t180 = (t179 & 1U);
    if (t180 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t173) != 0)
        goto LAB62;

LAB63:    t182 = (t175 + 4);
    t183 = *((unsigned int *)t175);
    t184 = (!(t183));
    t185 = *((unsigned int *)t182);
    t186 = (t184 || t185);
    if (t186 > 0)
        goto LAB64;

LAB65:    memcpy(t196, t175, 8);

LAB66:    memset(t172, 0, 8);
    t224 = (t196 + 4);
    t225 = *((unsigned int *)t224);
    t226 = (~(t225));
    t227 = *((unsigned int *)t196);
    t228 = (t227 & t226);
    t229 = (t228 & 1U);
    if (t229 != 0)
        goto LAB74;

LAB75:    if (*((unsigned int *)t224) != 0)
        goto LAB76;

LAB77:    t231 = (t172 + 4);
    t232 = *((unsigned int *)t172);
    t233 = *((unsigned int *)t231);
    t234 = (t232 || t233);
    if (t234 > 0)
        goto LAB78;

LAB79:    t237 = *((unsigned int *)t172);
    t238 = (~(t237));
    t239 = *((unsigned int *)t231);
    t240 = (t238 || t239);
    if (t240 > 0)
        goto LAB80;

LAB81:    if (*((unsigned int *)t231) > 0)
        goto LAB82;

LAB83:    if (*((unsigned int *)t172) > 0)
        goto LAB84;

LAB85:    memcpy(t171, t244, 8);

LAB86:    goto LAB54;

LAB55:    xsi_vlog_unsigned_bit_combine(t81, 32, t145, 32, t171, 32);
    goto LAB59;

LAB57:    memcpy(t81, t145, 8);
    goto LAB59;

LAB60:    *((unsigned int *)t175) = 1;
    goto LAB63;

LAB62:    t181 = (t175 + 4);
    *((unsigned int *)t175) = 1;
    *((unsigned int *)t181) = 1;
    goto LAB63;

LAB64:    t187 = (t0 + 5368U);
    t188 = *((char **)t187);
    memset(t189, 0, 8);
    t187 = (t188 + 4);
    t190 = *((unsigned int *)t187);
    t191 = (~(t190));
    t192 = *((unsigned int *)t188);
    t193 = (t192 & t191);
    t194 = (t193 & 1U);
    if (t194 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t187) != 0)
        goto LAB69;

LAB70:    t197 = *((unsigned int *)t175);
    t198 = *((unsigned int *)t189);
    t199 = (t197 | t198);
    *((unsigned int *)t196) = t199;
    t200 = (t175 + 4);
    t201 = (t189 + 4);
    t202 = (t196 + 4);
    t203 = *((unsigned int *)t200);
    t204 = *((unsigned int *)t201);
    t205 = (t203 | t204);
    *((unsigned int *)t202) = t205;
    t206 = *((unsigned int *)t202);
    t207 = (t206 != 0);
    if (t207 == 1)
        goto LAB71;

LAB72:
LAB73:    goto LAB66;

LAB67:    *((unsigned int *)t189) = 1;
    goto LAB70;

LAB69:    t195 = (t189 + 4);
    *((unsigned int *)t189) = 1;
    *((unsigned int *)t195) = 1;
    goto LAB70;

LAB71:    t208 = *((unsigned int *)t196);
    t209 = *((unsigned int *)t202);
    *((unsigned int *)t196) = (t208 | t209);
    t210 = (t175 + 4);
    t211 = (t189 + 4);
    t212 = *((unsigned int *)t210);
    t213 = (~(t212));
    t214 = *((unsigned int *)t175);
    t215 = (t214 & t213);
    t216 = *((unsigned int *)t211);
    t217 = (~(t216));
    t218 = *((unsigned int *)t189);
    t219 = (t218 & t217);
    t220 = (~(t215));
    t221 = (~(t219));
    t222 = *((unsigned int *)t202);
    *((unsigned int *)t202) = (t222 & t220);
    t223 = *((unsigned int *)t202);
    *((unsigned int *)t202) = (t223 & t221);
    goto LAB73;

LAB74:    *((unsigned int *)t172) = 1;
    goto LAB77;

LAB76:    t230 = (t172 + 4);
    *((unsigned int *)t172) = 1;
    *((unsigned int *)t230) = 1;
    goto LAB77;

LAB78:    t235 = (t0 + 1368U);
    t236 = *((char **)t235);
    goto LAB79;

LAB80:    t235 = (t0 + 6088);
    t241 = (t235 + 56U);
    t242 = *((char **)t241);
    t243 = ((char*)((ng3)));
    memset(t244, 0, 8);
    xsi_vlog_unsigned_add(t244, 32, t242, 32, t243, 32);
    goto LAB81;

LAB82:    xsi_vlog_unsigned_bit_combine(t171, 32, t236, 32, t244, 32);
    goto LAB86;

LAB84:    memcpy(t171, t236, 8);
    goto LAB86;

}

static void Always_57_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 8248U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 8880);
    *((int *)t2) = 1;
    t3 = (t0 + 8280);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    t2 = (t0 + 5528U);
    t3 = *((char **)t2);
    t2 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    t11 = ((char*)((ng2)));
    t12 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

}

static void Cont_84_6(char *t0)
{
    char t5[8];
    char t12[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 8496U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 5928);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 5928);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t13 = (t0 + 6088);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memset(t12, 0, 8);
    t16 = (t12 + 4);
    t17 = (t15 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (t18 >> 2);
    *((unsigned int *)t12) = t19;
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 2);
    *((unsigned int *)t16) = t21;
    t22 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t22 & 1023U);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 & 1023U);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t12, 10, 2);
    t24 = (t0 + 10128);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t5, 8);
    xsi_driver_vfirst_trans(t24, 0, 31);
    t29 = (t0 + 8896);
    *((int *)t29) = 1;

LAB1:    return;
}


extern void work_m_00000000001370274435_3224323566_init()
{
	static char *pe[] = {(void *)Cont_40_0,(void *)Cont_41_1,(void *)Cont_43_2,(void *)Initial_44_3,(void *)Cont_51_4,(void *)Always_57_5,(void *)Cont_84_6};
	xsi_register_didat("work_m_00000000001370274435_3224323566", "isim/mips.exe.sim/work/m_00000000001370274435_3224323566.didat");
	xsi_register_executes(pe);
}
