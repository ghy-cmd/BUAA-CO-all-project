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
static int ng0[] = {0, 0};
static int ng1[] = {1, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {18U, 0U};
static unsigned int ng4[] = {19U, 0U};
static unsigned int ng5[] = {28U, 0U};
static unsigned int ng6[] = {29U, 0U};
static int ng7[] = {12, 0};



static void Always_42_0(char *t0)
{
    char t7[8];
    char t42[8];
    char t43[8];
    char t44[8];
    char t45[8];
    char t55[8];
    char t63[8];
    char t106[8];
    char t107[8];
    char t109[8];
    char t125[8];
    char t140[8];
    char t156[8];
    char t164[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    char *t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t77;
    char *t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t108;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    unsigned int t137;
    char *t138;
    char *t139;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    char *t155;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    char *t168;
    char *t169;
    char *t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    unsigned int t177;
    char *t178;
    char *t179;
    unsigned int t180;
    unsigned int t181;
    unsigned int t182;
    int t183;
    unsigned int t184;
    unsigned int t185;
    unsigned int t186;
    int t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    char *t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    char *t198;
    char *t199;
    unsigned int t200;
    unsigned int t201;
    unsigned int t202;
    char *t203;
    char *t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    char *t209;

LAB0:    t1 = (t0 + 7968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 8288);
    *((int *)t2) = 1;
    t3 = (t0 + 8000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t0 + 1528U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t7 + 4);
    t35 = *((unsigned int *)t34);
    t36 = (~(t35));
    t37 = *((unsigned int *)t7);
    t38 = (t37 & t36);
    t39 = (t38 != 0);
    if (t39 > 0)
        goto LAB9;

LAB10:
LAB13:    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t7, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t13 = (t10 & t9);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB17;

LAB15:    if (*((unsigned int *)t2) == 0)
        goto LAB14;

LAB16:    t4 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t4) = 1;

LAB17:    t5 = (t7 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    t17 = *((unsigned int *)t7);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB18;

LAB19:
LAB20:
LAB11:    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:
LAB12:    t40 = ((char*)((ng0)));
    t41 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 11, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_unary_minus(t7, 32, t2, 32);
    t3 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t3, t7, 0, 0, 32, 0LL);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB11;

LAB14:    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:
LAB21:    t6 = (t0 + 1688U);
    t11 = *((char **)t6);
    t6 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t6, t11, 0, 0, 11, 0LL);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng0)));
    memset(t43, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB23;

LAB22:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB23;

LAB26:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB24;

LAB25:    memset(t42, 0, 8);
    t11 = (t43 + 4);
    t8 = *((unsigned int *)t11);
    t9 = (~(t8));
    t10 = *((unsigned int *)t43);
    t13 = (t10 & t9);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB27;

LAB28:    if (*((unsigned int *)t11) != 0)
        goto LAB29;

LAB30:    t20 = (t42 + 4);
    t15 = *((unsigned int *)t42);
    t16 = *((unsigned int *)t20);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB31;

LAB32:    t18 = *((unsigned int *)t42);
    t19 = (~(t18));
    t22 = *((unsigned int *)t20);
    t23 = (t19 || t22);
    if (t23 > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t20) > 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t42) > 0)
        goto LAB37;

LAB38:    memcpy(t7, t40, 8);

LAB39:    t41 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t41, t7, 0, 0, 32, 0LL);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t43, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t8 = *((unsigned int *)t3);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t5);
    t15 = (t13 ^ t14);
    t16 = (t10 | t15);
    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t5);
    t19 = (t17 | t18);
    t22 = (~(t19));
    t23 = (t16 & t22);
    if (t23 != 0)
        goto LAB43;

LAB40:    if (t19 != 0)
        goto LAB42;

LAB41:    *((unsigned int *)t43) = 1;

LAB43:    memset(t44, 0, 8);
    t11 = (t43 + 4);
    t24 = *((unsigned int *)t11);
    t26 = (~(t24));
    t27 = *((unsigned int *)t43);
    t28 = (t27 & t26);
    t30 = (t28 & 1U);
    if (t30 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t11) != 0)
        goto LAB46;

LAB47:    t20 = (t44 + 4);
    t31 = *((unsigned int *)t44);
    t32 = (!(t31));
    t33 = *((unsigned int *)t20);
    t35 = (t32 || t33);
    if (t35 > 0)
        goto LAB48;

LAB49:    memcpy(t63, t44, 8);

LAB50:    memset(t42, 0, 8);
    t89 = (t63 + 4);
    t90 = *((unsigned int *)t89);
    t91 = (~(t90));
    t92 = *((unsigned int *)t63);
    t93 = (t92 & t91);
    t94 = (t93 & 1U);
    if (t94 != 0)
        goto LAB62;

LAB63:    if (*((unsigned int *)t89) != 0)
        goto LAB64;

LAB65:    t96 = (t42 + 4);
    t97 = *((unsigned int *)t42);
    t98 = *((unsigned int *)t96);
    t99 = (t97 || t98);
    if (t99 > 0)
        goto LAB66;

LAB67:    t102 = *((unsigned int *)t42);
    t103 = (~(t102));
    t104 = *((unsigned int *)t96);
    t105 = (t103 || t104);
    if (t105 > 0)
        goto LAB68;

LAB69:    if (*((unsigned int *)t96) > 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t42) > 0)
        goto LAB72;

LAB73:    memcpy(t7, t106, 8);

LAB74:    t203 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t203, t7, 0, 0, 32, 0LL);
    t2 = (t0 + 3768U);
    t3 = *((char **)t2);
    memset(t42, 0, 8);
    t2 = (t3 + 4);
    t8 = *((unsigned int *)t2);
    t9 = (~(t8));
    t10 = *((unsigned int *)t3);
    t13 = (t10 & t9);
    t14 = (t13 & 4294967295U);
    if (t14 != 0)
        goto LAB110;

LAB111:    if (*((unsigned int *)t2) != 0)
        goto LAB112;

LAB113:    t5 = (t42 + 4);
    t15 = *((unsigned int *)t42);
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB114;

LAB115:    t18 = *((unsigned int *)t42);
    t19 = (~(t18));
    t22 = *((unsigned int *)t5);
    t23 = (t19 || t22);
    if (t23 > 0)
        goto LAB116;

LAB117:    if (*((unsigned int *)t5) > 0)
        goto LAB118;

LAB119:    if (*((unsigned int *)t42) > 0)
        goto LAB120;

LAB121:    memcpy(t7, t43, 8);

LAB122:    t41 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t41, t7, 0, 0, 32, 0LL);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 6888);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 4088U);
    t3 = *((char **)t2);
    t2 = (t0 + 7048);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    t2 = (t0 + 4248U);
    t3 = *((char **)t2);
    t2 = (t0 + 6728);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    goto LAB20;

LAB23:    t6 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB25;

LAB24:    *((unsigned int *)t43) = 1;
    goto LAB25;

LAB27:    *((unsigned int *)t42) = 1;
    goto LAB30;

LAB29:    t12 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB30;

LAB31:    t21 = (t0 + 3288U);
    t34 = *((char **)t21);
    t21 = ((char*)((ng1)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_minus(t44, 32, t34, 32, t21, 32);
    goto LAB32;

LAB33:    t40 = ((char*)((ng2)));
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t7, 32, t44, 32, t40, 32);
    goto LAB39;

LAB37:    memcpy(t7, t44, 8);
    goto LAB39;

LAB42:    t6 = (t43 + 4);
    *((unsigned int *)t43) = 1;
    *((unsigned int *)t6) = 1;
    goto LAB43;

LAB44:    *((unsigned int *)t44) = 1;
    goto LAB47;

LAB46:    t12 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB47;

LAB48:    t21 = (t0 + 1688U);
    t34 = *((char **)t21);
    t21 = ((char*)((ng4)));
    memset(t45, 0, 8);
    t40 = (t34 + 4);
    t41 = (t21 + 4);
    t36 = *((unsigned int *)t34);
    t37 = *((unsigned int *)t21);
    t38 = (t36 ^ t37);
    t39 = *((unsigned int *)t40);
    t46 = *((unsigned int *)t41);
    t47 = (t39 ^ t46);
    t48 = (t38 | t47);
    t49 = *((unsigned int *)t40);
    t50 = *((unsigned int *)t41);
    t51 = (t49 | t50);
    t52 = (~(t51));
    t53 = (t48 & t52);
    if (t53 != 0)
        goto LAB54;

LAB51:    if (t51 != 0)
        goto LAB53;

LAB52:    *((unsigned int *)t45) = 1;

LAB54:    memset(t55, 0, 8);
    t56 = (t45 + 4);
    t57 = *((unsigned int *)t56);
    t58 = (~(t57));
    t59 = *((unsigned int *)t45);
    t60 = (t59 & t58);
    t61 = (t60 & 1U);
    if (t61 != 0)
        goto LAB55;

LAB56:    if (*((unsigned int *)t56) != 0)
        goto LAB57;

LAB58:    t64 = *((unsigned int *)t44);
    t65 = *((unsigned int *)t55);
    t66 = (t64 | t65);
    *((unsigned int *)t63) = t66;
    t67 = (t44 + 4);
    t68 = (t55 + 4);
    t69 = (t63 + 4);
    t70 = *((unsigned int *)t67);
    t71 = *((unsigned int *)t68);
    t72 = (t70 | t71);
    *((unsigned int *)t69) = t72;
    t73 = *((unsigned int *)t69);
    t74 = (t73 != 0);
    if (t74 == 1)
        goto LAB59;

LAB60:
LAB61:    goto LAB50;

LAB53:    t54 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB54;

LAB55:    *((unsigned int *)t55) = 1;
    goto LAB58;

LAB57:    t62 = (t55 + 4);
    *((unsigned int *)t55) = 1;
    *((unsigned int *)t62) = 1;
    goto LAB58;

LAB59:    t75 = *((unsigned int *)t63);
    t76 = *((unsigned int *)t69);
    *((unsigned int *)t63) = (t75 | t76);
    t77 = (t44 + 4);
    t78 = (t55 + 4);
    t79 = *((unsigned int *)t77);
    t80 = (~(t79));
    t81 = *((unsigned int *)t44);
    t25 = (t81 & t80);
    t82 = *((unsigned int *)t78);
    t83 = (~(t82));
    t84 = *((unsigned int *)t55);
    t29 = (t84 & t83);
    t85 = (~(t25));
    t86 = (~(t29));
    t87 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t87 & t85);
    t88 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t88 & t86);
    goto LAB61;

LAB62:    *((unsigned int *)t42) = 1;
    goto LAB65;

LAB64:    t95 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t95) = 1;
    goto LAB65;

LAB66:    t100 = (t0 + 2968U);
    t101 = *((char **)t100);
    goto LAB67;

LAB68:    t100 = (t0 + 1688U);
    t108 = *((char **)t100);
    t100 = ((char*)((ng5)));
    memset(t109, 0, 8);
    t110 = (t108 + 4);
    t111 = (t100 + 4);
    t112 = *((unsigned int *)t108);
    t113 = *((unsigned int *)t100);
    t114 = (t112 ^ t113);
    t115 = *((unsigned int *)t110);
    t116 = *((unsigned int *)t111);
    t117 = (t115 ^ t116);
    t118 = (t114 | t117);
    t119 = *((unsigned int *)t110);
    t120 = *((unsigned int *)t111);
    t121 = (t119 | t120);
    t122 = (~(t121));
    t123 = (t118 & t122);
    if (t123 != 0)
        goto LAB78;

LAB75:    if (t121 != 0)
        goto LAB77;

LAB76:    *((unsigned int *)t109) = 1;

LAB78:    memset(t125, 0, 8);
    t126 = (t109 + 4);
    t127 = *((unsigned int *)t126);
    t128 = (~(t127));
    t129 = *((unsigned int *)t109);
    t130 = (t129 & t128);
    t131 = (t130 & 1U);
    if (t131 != 0)
        goto LAB79;

LAB80:    if (*((unsigned int *)t126) != 0)
        goto LAB81;

LAB82:    t133 = (t125 + 4);
    t134 = *((unsigned int *)t125);
    t135 = (!(t134));
    t136 = *((unsigned int *)t133);
    t137 = (t135 || t136);
    if (t137 > 0)
        goto LAB83;

LAB84:    memcpy(t164, t125, 8);

LAB85:    memset(t107, 0, 8);
    t192 = (t164 + 4);
    t193 = *((unsigned int *)t192);
    t194 = (~(t193));
    t195 = *((unsigned int *)t164);
    t196 = (t195 & t194);
    t197 = (t196 & 1U);
    if (t197 != 0)
        goto LAB97;

LAB98:    if (*((unsigned int *)t192) != 0)
        goto LAB99;

LAB100:    t199 = (t107 + 4);
    t200 = *((unsigned int *)t107);
    t201 = *((unsigned int *)t199);
    t202 = (t200 || t201);
    if (t202 > 0)
        goto LAB101;

LAB102:    t205 = *((unsigned int *)t107);
    t206 = (~(t205));
    t207 = *((unsigned int *)t199);
    t208 = (t206 || t207);
    if (t208 > 0)
        goto LAB103;

LAB104:    if (*((unsigned int *)t199) > 0)
        goto LAB105;

LAB106:    if (*((unsigned int *)t107) > 0)
        goto LAB107;

LAB108:    memcpy(t106, t209, 8);

LAB109:    goto LAB69;

LAB70:    xsi_vlog_unsigned_bit_combine(t7, 32, t101, 32, t106, 32);
    goto LAB74;

LAB72:    memcpy(t7, t101, 8);
    goto LAB74;

LAB77:    t124 = (t109 + 4);
    *((unsigned int *)t109) = 1;
    *((unsigned int *)t124) = 1;
    goto LAB78;

LAB79:    *((unsigned int *)t125) = 1;
    goto LAB82;

LAB81:    t132 = (t125 + 4);
    *((unsigned int *)t125) = 1;
    *((unsigned int *)t132) = 1;
    goto LAB82;

LAB83:    t138 = (t0 + 1688U);
    t139 = *((char **)t138);
    t138 = ((char*)((ng6)));
    memset(t140, 0, 8);
    t141 = (t139 + 4);
    t142 = (t138 + 4);
    t143 = *((unsigned int *)t139);
    t144 = *((unsigned int *)t138);
    t145 = (t143 ^ t144);
    t146 = *((unsigned int *)t141);
    t147 = *((unsigned int *)t142);
    t148 = (t146 ^ t147);
    t149 = (t145 | t148);
    t150 = *((unsigned int *)t141);
    t151 = *((unsigned int *)t142);
    t152 = (t150 | t151);
    t153 = (~(t152));
    t154 = (t149 & t153);
    if (t154 != 0)
        goto LAB89;

LAB86:    if (t152 != 0)
        goto LAB88;

LAB87:    *((unsigned int *)t140) = 1;

LAB89:    memset(t156, 0, 8);
    t157 = (t140 + 4);
    t158 = *((unsigned int *)t157);
    t159 = (~(t158));
    t160 = *((unsigned int *)t140);
    t161 = (t160 & t159);
    t162 = (t161 & 1U);
    if (t162 != 0)
        goto LAB90;

LAB91:    if (*((unsigned int *)t157) != 0)
        goto LAB92;

LAB93:    t165 = *((unsigned int *)t125);
    t166 = *((unsigned int *)t156);
    t167 = (t165 | t166);
    *((unsigned int *)t164) = t167;
    t168 = (t125 + 4);
    t169 = (t156 + 4);
    t170 = (t164 + 4);
    t171 = *((unsigned int *)t168);
    t172 = *((unsigned int *)t169);
    t173 = (t171 | t172);
    *((unsigned int *)t170) = t173;
    t174 = *((unsigned int *)t170);
    t175 = (t174 != 0);
    if (t175 == 1)
        goto LAB94;

LAB95:
LAB96:    goto LAB85;

LAB88:    t155 = (t140 + 4);
    *((unsigned int *)t140) = 1;
    *((unsigned int *)t155) = 1;
    goto LAB89;

LAB90:    *((unsigned int *)t156) = 1;
    goto LAB93;

LAB92:    t163 = (t156 + 4);
    *((unsigned int *)t156) = 1;
    *((unsigned int *)t163) = 1;
    goto LAB93;

LAB94:    t176 = *((unsigned int *)t164);
    t177 = *((unsigned int *)t170);
    *((unsigned int *)t164) = (t176 | t177);
    t178 = (t125 + 4);
    t179 = (t156 + 4);
    t180 = *((unsigned int *)t178);
    t181 = (~(t180));
    t182 = *((unsigned int *)t125);
    t183 = (t182 & t181);
    t184 = *((unsigned int *)t179);
    t185 = (~(t184));
    t186 = *((unsigned int *)t156);
    t187 = (t186 & t185);
    t188 = (~(t183));
    t189 = (~(t187));
    t190 = *((unsigned int *)t170);
    *((unsigned int *)t170) = (t190 & t188);
    t191 = *((unsigned int *)t170);
    *((unsigned int *)t170) = (t191 & t189);
    goto LAB96;

LAB97:    *((unsigned int *)t107) = 1;
    goto LAB100;

LAB99:    t198 = (t107 + 4);
    *((unsigned int *)t107) = 1;
    *((unsigned int *)t198) = 1;
    goto LAB100;

LAB101:    t203 = (t0 + 3608U);
    t204 = *((char **)t203);
    goto LAB102;

LAB103:    t203 = (t0 + 3128U);
    t209 = *((char **)t203);
    goto LAB104;

LAB105:    xsi_vlog_unsigned_bit_combine(t106, 32, t204, 32, t209, 32);
    goto LAB109;

LAB107:    memcpy(t106, t204, 8);
    goto LAB109;

LAB110:    *((unsigned int *)t42) = 1;
    goto LAB113;

LAB112:    t4 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB113;

LAB114:    t6 = (t0 + 3768U);
    t11 = *((char **)t6);
    goto LAB115;

LAB116:    t6 = (t0 + 3928U);
    t12 = *((char **)t6);
    memset(t44, 0, 8);
    t6 = (t12 + 4);
    t24 = *((unsigned int *)t6);
    t26 = (~(t24));
    t27 = *((unsigned int *)t12);
    t28 = (t27 & t26);
    t30 = (t28 & 1U);
    if (t30 != 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t6) != 0)
        goto LAB125;

LAB126:    t21 = (t44 + 4);
    t31 = *((unsigned int *)t44);
    t32 = *((unsigned int *)t21);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB127;

LAB128:    t35 = *((unsigned int *)t44);
    t36 = (~(t35));
    t37 = *((unsigned int *)t21);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB129;

LAB130:    if (*((unsigned int *)t21) > 0)
        goto LAB131;

LAB132:    if (*((unsigned int *)t44) > 0)
        goto LAB133;

LAB134:    memcpy(t43, t40, 8);

LAB135:    goto LAB117;

LAB118:    xsi_vlog_unsigned_bit_combine(t7, 32, t11, 32, t43, 32);
    goto LAB122;

LAB120:    memcpy(t7, t11, 8);
    goto LAB122;

LAB123:    *((unsigned int *)t44) = 1;
    goto LAB126;

LAB125:    t20 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB126;

LAB127:    t34 = ((char*)((ng7)));
    goto LAB128;

LAB129:    t40 = ((char*)((ng0)));
    goto LAB130;

LAB131:    xsi_vlog_unsigned_bit_combine(t43, 32, t34, 32, t40, 32);
    goto LAB135;

LAB133:    memcpy(t43, t34, 8);
    goto LAB135;

}


extern void work_m_00000000001666411293_2875975674_init()
{
	static char *pe[] = {(void *)Always_42_0};
	xsi_register_didat("work_m_00000000001666411293_2875975674", "isim/mips.exe.sim/work/m_00000000001666411293_2875975674.didat");
	xsi_register_executes(pe);
}
