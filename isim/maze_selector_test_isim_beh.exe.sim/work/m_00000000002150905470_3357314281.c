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
static const char *ng0 = "C:/Users/152/Desktop/MazeGame/maze_selector.v";
static unsigned int ng1[] = {148897789U, 0U, 2138087809U, 0U, 289506401U, 0U, 59623423U, 0U, 3709835797U, 0U, 4229432349U, 0U, 3623902717U, 0U, 281395185U, 0U, 2851962808U, 0U, 4050319698U, 0U, 4206383265U, 0U, 4161809405U, 0U, 49151U, 0U};
static unsigned int ng2[] = {2097151U, 0U, 402653568U, 0U, 98304U, 0U, 25165848U, 0U, 2147489792U, 0U, 1572865U, 0U, 402653568U, 0U, 98304U, 0U, 25165848U, 0U, 2147489792U, 0U, 1572865U, 0U, 4160749952U, 0U, 65535U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {1U, 0U};



static void NetDecl_34_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6424);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 400);
    xsi_driver_vfirst_trans(t3, 0, 399U);

LAB1:    return;
}

static void NetDecl_59_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6488);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    xsi_vlog_bit_copy(t7, 0, t2, 0, 400);
    xsi_driver_vfirst_trans(t3, 0, 399U);

LAB1:    return;
}

static void Always_86_2(char *t0)
{
    char t7[8];
    char t18[8];
    char t27[8];
    char t35[8];
    char t44[8];
    char t47[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t45;
    char *t46;
    char *t48;
    unsigned int t49;
    int t50;

LAB0:    t1 = (t0 + 5760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t2 = (t0 + 6328);
    *((int *)t2) = 1;
    t3 = (t0 + 5792);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(86, ng0);

LAB5:    xsi_set_current_line(89, ng0);
    xsi_set_current_line(89, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 3224);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 5);

LAB6:    t2 = (t0 + 3224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 472);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB8;

LAB7:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB8;

LAB11:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB9;

LAB10:    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1864U);
    t3 = *((char **)t2);

LAB28:    t2 = ((char*)((ng5)));
    t50 = xsi_vlog_unsigned_case_compare(t3, 8, t2, 8);
    if (t50 == 1)
        goto LAB29;

LAB30:
LAB32:
LAB31:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4184);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 2904);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 10);

LAB33:    goto LAB2;

LAB8:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB10;

LAB9:    *((unsigned int *)t7) = 1;
    goto LAB10;

LAB12:    xsi_set_current_line(89, ng0);

LAB14:    xsi_set_current_line(90, ng0);
    xsi_set_current_line(90, ng0);
    t16 = ((char*)((ng3)));
    t17 = (t0 + 3384);
    xsi_vlogvar_assign_value(t17, t16, 0, 0, 5);

LAB15:    t2 = (t0 + 3384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 608);
    t6 = *((char **)t5);
    memset(t7, 0, 8);
    t5 = (t4 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB17;

LAB16:    t8 = (t6 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB17;

LAB20:    if (*((unsigned int *)t4) < *((unsigned int *)t6))
        goto LAB18;

LAB19:    t10 = (t7 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3224);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t4, 5, t5, 32);
    t6 = (t0 + 3224);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 5);
    goto LAB6;

LAB17:    t9 = (t7 + 4);
    *((unsigned int *)t7) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB19;

LAB18:    *((unsigned int *)t7) = 1;
    goto LAB19;

LAB21:    xsi_set_current_line(90, ng0);

LAB23:    xsi_set_current_line(91, ng0);
    t16 = (t0 + 2184U);
    t17 = *((char **)t16);
    t16 = (t0 + 2144U);
    t19 = (t16 + 72U);
    t20 = *((char **)t19);
    t21 = (t0 + 2144U);
    t22 = (t21 + 48U);
    t23 = *((char **)t22);
    t24 = (t0 + 3224);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    xsi_vlog_generic_get_array_select_value(t18, 20, t17, t20, t23, 2, 1, t26, 5, 2);
    t28 = (t0 + 2144U);
    t29 = (t28 + 72U);
    t30 = *((char **)t29);
    t31 = (t0 + 3384);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    xsi_vlog_generic_get_index_select_value(t27, 1, t18, t30, 2, t33, 5, 2);
    t34 = (t0 + 3544);
    t36 = (t0 + 3544);
    t37 = (t36 + 72U);
    t38 = *((char **)t37);
    t39 = (t0 + 3224);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t0 + 472);
    t43 = *((char **)t42);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_multiply(t44, 32, t41, 5, t43, 32);
    t42 = (t0 + 3384);
    t45 = (t42 + 56U);
    t46 = *((char **)t45);
    memset(t47, 0, 8);
    xsi_vlog_unsigned_add(t47, 32, t44, 32, t46, 5);
    xsi_vlog_generic_convert_bit_index(t35, t38, 2, t47, 32, 2);
    t48 = (t35 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (!(t49));
    if (t50 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2344U);
    t3 = *((char **)t2);
    t2 = (t0 + 2304U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t6 = (t0 + 2304U);
    t8 = (t6 + 48U);
    t9 = *((char **)t8);
    t10 = (t0 + 3224);
    t16 = (t10 + 56U);
    t17 = *((char **)t16);
    xsi_vlog_generic_get_array_select_value(t7, 20, t3, t5, t9, 2, 1, t17, 5, 2);
    t19 = (t0 + 2304U);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 3384);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    xsi_vlog_generic_get_index_select_value(t18, 1, t7, t21, 2, t24, 5, 2);
    t25 = (t0 + 4024);
    t26 = (t0 + 4024);
    t28 = (t26 + 72U);
    t29 = *((char **)t28);
    t30 = (t0 + 3224);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t0 + 472);
    t34 = *((char **)t33);
    memset(t35, 0, 8);
    xsi_vlog_unsigned_multiply(t35, 32, t32, 5, t34, 32);
    t33 = (t0 + 3384);
    t36 = (t33 + 56U);
    t37 = *((char **)t36);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 32, t35, 32, t37, 5);
    xsi_vlog_generic_convert_bit_index(t27, t29, 2, t44, 32, 2);
    t38 = (t27 + 4);
    t11 = *((unsigned int *)t38);
    t50 = (!(t11));
    if (t50 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 3384);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t7, 0, 8);
    xsi_vlog_unsigned_add(t7, 32, t4, 5, t5, 32);
    t6 = (t0 + 3384);
    xsi_vlogvar_assign_value(t6, t7, 0, 0, 5);
    goto LAB15;

LAB24:    xsi_vlogvar_assign_value(t34, t27, 0, *((unsigned int *)t35), 1);
    goto LAB25;

LAB26:    xsi_vlogvar_assign_value(t25, t18, 0, *((unsigned int *)t27), 1);
    goto LAB27;

LAB29:    xsi_set_current_line(98, ng0);
    t4 = (t0 + 3704);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 2904);
    xsi_vlogvar_assign_value(t8, t6, 0, 0, 10);
    goto LAB33;

}

static void Always_103_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 6008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 6344);
    *((int *)t2) = 1;
    t3 = (t0 + 6040);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);

LAB5:    xsi_set_current_line(105, ng0);
    t4 = (t0 + 1864U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 8, t4, 8);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB10:
LAB9:    xsi_set_current_line(110, ng0);

LAB13:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4024);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 2744);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 400);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4344);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 3064);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);

LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(106, ng0);

LAB12:    xsi_set_current_line(107, ng0);
    t7 = (t0 + 3544);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t0 + 2744);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 400);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 3064);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 10);
    goto LAB11;

}


extern void work_m_00000000002150905470_3357314281_init()
{
	static char *pe[] = {(void *)NetDecl_34_0,(void *)NetDecl_59_1,(void *)Always_86_2,(void *)Always_103_3};
	xsi_register_didat("work_m_00000000002150905470_3357314281", "isim/maze_selector_test_isim_beh.exe.sim/work/m_00000000002150905470_3357314281.didat");
	xsi_register_executes(pe);
}
