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
static const char *ng0 = "C:/VHDL/project/sSegDisplay.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0150207685_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5568);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5424);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0150207685_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5632);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5440);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0150207685_3212880686_p_2(char *t0)
{
    char t8[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5456);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 2472U);
    t9 = *((char **)t4);
    t4 = (t0 + 8604U);
    t10 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t8, t9, t4, (unsigned char)3);
    t11 = (t8 + 12U);
    t12 = *((unsigned int *)t11);
    t13 = (1U * t12);
    t14 = (20U != t13);
    if (t14 == 1)
        goto LAB8;

LAB9:    t15 = (t0 + 5696);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t10, 20U);
    xsi_driver_first_trans_fast(t15);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(20U, t13, 0);
    goto LAB9;

}

static void work_a_0150207685_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = (19 - 19);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 8785);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB12:    t10 = (t0 + 8788);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB13:    t13 = (t0 + 8791);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB14:    t16 = (t0 + 8794);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB15:    t19 = (t0 + 8797);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB16:    t22 = (t0 + 8800);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8851);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(82, ng0);

LAB21:    t2 = (t0 + 5472);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(84, ng0);
    t25 = (t0 + 8803);
    t27 = (t0 + 5760);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 8U);
    xsi_driver_first_trans_fast(t27);
    goto LAB4;

LAB6:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8811);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8819);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8827);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8835);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 8843);
    t7 = (t0 + 5760);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5472);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}

static void work_a_0150207685_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = (19 - 19);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 8859);
    t9 = xsi_mem_cmp(t7, t2, 3U);
    if (t9 == 1)
        goto LAB5;

LAB12:    t10 = (t0 + 8862);
    t12 = xsi_mem_cmp(t10, t2, 3U);
    if (t12 == 1)
        goto LAB6;

LAB13:    t13 = (t0 + 8865);
    t15 = xsi_mem_cmp(t13, t2, 3U);
    if (t15 == 1)
        goto LAB7;

LAB14:    t16 = (t0 + 8868);
    t18 = xsi_mem_cmp(t16, t2, 3U);
    if (t18 == 1)
        goto LAB8;

LAB15:    t19 = (t0 + 8871);
    t21 = xsi_mem_cmp(t19, t2, 3U);
    if (t21 == 1)
        goto LAB9;

LAB16:    t22 = (t0 + 8874);
    t24 = xsi_mem_cmp(t22, t2, 3U);
    if (t24 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 8877);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);

LAB4:    xsi_set_current_line(93, ng0);

LAB21:    t2 = (t0 + 5488);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(95, ng0);
    t25 = (t0 + 2952U);
    t26 = *((char **)t25);
    t27 = (47 - 7);
    t28 = (t27 * 1U);
    t29 = (0 + t28);
    t25 = (t26 + t29);
    t30 = (t0 + 5824);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    memcpy(t34, t25, 8U);
    xsi_driver_first_trans_fast(t30);
    goto LAB4;

LAB6:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (47 - 15);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (47 - 23);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB8:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (47 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB9:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (47 - 39);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB10:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t4 = (47 - 47);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t7 = (t0 + 5824);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 5488);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_0150207685_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0150207685_3212880686_p_0,(void *)work_a_0150207685_3212880686_p_1,(void *)work_a_0150207685_3212880686_p_2,(void *)work_a_0150207685_3212880686_p_3,(void *)work_a_0150207685_3212880686_p_4};
	xsi_register_didat("work_a_0150207685_3212880686", "isim/tb_digital_clock_isim_beh.exe.sim/work/a_0150207685_3212880686.didat");
	xsi_register_executes(pe);
}
