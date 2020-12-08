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
static const char *ng0 = "D:/XilinxLabs/Lab4/JohnsonCounter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_1607535136_3212880686_p_0(char *t0)
{
    char t22[16];
    char t23[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t24;
    int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3360);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t5 = t1;
    memset(t5, (unsigned char)2, 5U);
    t6 = (t0 + 3456);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    if (4 > 0)
        goto LAB7;

LAB8:    if (-1 == -1)
        goto LAB12;

LAB13:    t11 = 0;

LAB9:    t12 = (t11 - 1);
    t13 = (4 - t12);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t2 = (t5 + t15);
    t6 = (t0 + 1512U);
    t7 = *((char **)t6);
    if (4 > 0)
        goto LAB14;

LAB15:    if (-1 == -1)
        goto LAB19;

LAB20:    t16 = 0;

LAB16:    t17 = (t16 - 4);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t6 = (t7 + t20);
    t4 = *((unsigned char *)t6);
    t21 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t9 = ((IEEE_P_2592010699) + 4024);
    t10 = (t23 + 0U);
    t24 = (t10 + 0U);
    *((int *)t24) = 3;
    t24 = (t10 + 4U);
    *((int *)t24) = 0;
    t24 = (t10 + 8U);
    *((int *)t24) = -1;
    t25 = (0 - 3);
    t26 = (t25 * -1);
    t26 = (t26 + 1);
    t24 = (t10 + 12U);
    *((unsigned int *)t24) = t26;
    t8 = xsi_base_array_concat(t8, t22, t9, (char)97, t2, t23, (char)99, t21, (char)101);
    t26 = (4U + 1U);
    t27 = (5U != t26);
    if (t27 == 1)
        goto LAB21;

LAB22:    t24 = (t0 + 3456);
    t28 = (t24 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t8, 5U);
    xsi_driver_first_trans_fast(t24);
    goto LAB3;

LAB7:    if (-1 == 1)
        goto LAB10;

LAB11:    t11 = 4;
    goto LAB9;

LAB10:    t11 = 0;
    goto LAB9;

LAB12:    t11 = 4;
    goto LAB9;

LAB14:    if (-1 == 1)
        goto LAB17;

LAB18:    t16 = 4;
    goto LAB16;

LAB17:    t16 = 0;
    goto LAB16;

LAB19:    t16 = 4;
    goto LAB16;

LAB21:    xsi_size_not_matching(5U, t26, 0);
    goto LAB22;

}

static void work_a_1607535136_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3520);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3376);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1607535136_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1607535136_3212880686_p_0,(void *)work_a_1607535136_3212880686_p_1};
	xsi_register_didat("work_a_1607535136_3212880686", "isim/MyJohnsonCounter_tb_isim_beh.exe.sim/work/a_1607535136_3212880686.didat");
	xsi_register_executes(pe);
}
