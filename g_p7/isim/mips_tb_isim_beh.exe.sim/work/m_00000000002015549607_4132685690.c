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
static const char *ng0 = "D:/ISE/gswp7/IDEX.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {1, 0};
static int ng4[] = {100, 0};
static int ng5[] = {10, 0};



static void Always_37_0(char *t0)
{
    char t7[8];
    char t42[8];
    char t43[8];
    char t44[8];
    char t45[8];
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
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;

LAB0:    t1 = (t0 + 7488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 7808);
    *((int *)t2) = 1;
    t3 = (t0 + 7520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(41, ng0);
    t4 = (t0 + 1208U);
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

LAB10:    xsi_set_current_line(59, ng0);

LAB13:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1368U);
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

LAB9:    xsi_set_current_line(42, ng0);

LAB12:    xsi_set_current_line(43, ng0);
    t40 = ((char*)((ng1)));
    t41 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t41, t40, 0, 0, 11, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng3)));
    memset(t7, 0, 8);
    xsi_vlog_signed_unary_minus(t7, 32, t2, 32);
    t3 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t3, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB11;

LAB14:    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(62, ng0);

LAB21:    xsi_set_current_line(63, ng0);
    t6 = (t0 + 1688U);
    t11 = *((char **)t6);
    t6 = (t0 + 4488);
    xsi_vlogvar_wait_assign_value(t6, t11, 0, 0, 11, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 4648);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t0 + 4968);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t0 + 5128);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 5288);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2648U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 5, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2808U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3128U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 3288U);
    t3 = *((char **)t2);
    t2 = (t0 + 5928);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
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

LAB39:    t41 = (t0 + 6248);
    xsi_vlogvar_wait_assign_value(t41, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t2 = (t0 + 4328);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3448U);
    t3 = *((char **)t2);
    t2 = (t0 + 6088);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 32, 0LL);
    xsi_set_current_line(76, ng0);
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
        goto LAB40;

LAB41:    if (*((unsigned int *)t2) != 0)
        goto LAB42;

LAB43:    t5 = (t42 + 4);
    t15 = *((unsigned int *)t42);
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB44;

LAB45:    t18 = *((unsigned int *)t42);
    t19 = (~(t18));
    t22 = *((unsigned int *)t5);
    t23 = (t19 || t22);
    if (t23 > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t5) > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t42) > 0)
        goto LAB50;

LAB51:    memcpy(t7, t43, 8);

LAB52:    t60 = (t0 + 6408);
    xsi_vlogvar_wait_assign_value(t60, t7, 0, 0, 32, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 3928U);
    t3 = *((char **)t2);
    t2 = (t0 + 6568);
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

LAB31:    t21 = (t0 + 2968U);
    t34 = *((char **)t21);
    t21 = ((char*)((ng3)));
    memset(t44, 0, 8);
    xsi_vlog_unsigned_minus(t44, 32, t34, 32, t21, 32);
    goto LAB32;

LAB33:    t40 = ((char*)((ng1)));
    goto LAB34;

LAB35:    xsi_vlog_unsigned_bit_combine(t7, 32, t44, 32, t40, 32);
    goto LAB39;

LAB37:    memcpy(t7, t44, 8);
    goto LAB39;

LAB40:    *((unsigned int *)t42) = 1;
    goto LAB43;

LAB42:    t4 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB43;

LAB44:    t6 = (t0 + 3768U);
    t11 = *((char **)t6);
    goto LAB45;

LAB46:    t6 = (t0 + 1688U);
    t12 = *((char **)t6);
    t6 = ((char*)((ng4)));
    memset(t45, 0, 8);
    t20 = (t12 + 4);
    t21 = (t6 + 4);
    t24 = *((unsigned int *)t12);
    t26 = *((unsigned int *)t6);
    t27 = (t24 ^ t26);
    t28 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t21);
    t31 = (t28 ^ t30);
    t32 = (t27 | t31);
    t33 = *((unsigned int *)t20);
    t35 = *((unsigned int *)t21);
    t36 = (t33 | t35);
    t37 = (~(t36));
    t38 = (t32 & t37);
    if (t38 != 0)
        goto LAB56;

LAB53:    if (t36 != 0)
        goto LAB55;

LAB54:    *((unsigned int *)t45) = 1;

LAB56:    memset(t44, 0, 8);
    t40 = (t45 + 4);
    t39 = *((unsigned int *)t40);
    t46 = (~(t39));
    t47 = *((unsigned int *)t45);
    t48 = (t47 & t46);
    t49 = (t48 & 1U);
    if (t49 != 0)
        goto LAB57;

LAB58:    if (*((unsigned int *)t40) != 0)
        goto LAB59;

LAB60:    t50 = (t44 + 4);
    t51 = *((unsigned int *)t44);
    t52 = *((unsigned int *)t50);
    t53 = (t51 || t52);
    if (t53 > 0)
        goto LAB61;

LAB62:    t55 = *((unsigned int *)t44);
    t56 = (~(t55));
    t57 = *((unsigned int *)t50);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB63;

LAB64:    if (*((unsigned int *)t50) > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t44) > 0)
        goto LAB67;

LAB68:    memcpy(t43, t59, 8);

LAB69:    goto LAB47;

LAB48:    xsi_vlog_unsigned_bit_combine(t7, 32, t11, 32, t43, 32);
    goto LAB52;

LAB50:    memcpy(t7, t11, 8);
    goto LAB52;

LAB55:    t34 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB56;

LAB57:    *((unsigned int *)t44) = 1;
    goto LAB60;

LAB59:    t41 = (t44 + 4);
    *((unsigned int *)t44) = 1;
    *((unsigned int *)t41) = 1;
    goto LAB60;

LAB61:    t54 = ((char*)((ng5)));
    goto LAB62;

LAB63:    t59 = ((char*)((ng1)));
    goto LAB64;

LAB65:    xsi_vlog_unsigned_bit_combine(t43, 32, t54, 32, t59, 32);
    goto LAB69;

LAB67:    memcpy(t43, t54, 8);
    goto LAB69;

}


extern void work_m_00000000002015549607_4132685690_init()
{
	static char *pe[] = {(void *)Always_37_0};
	xsi_register_didat("work_m_00000000002015549607_4132685690", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000002015549607_4132685690.didat");
	xsi_register_executes(pe);
}
