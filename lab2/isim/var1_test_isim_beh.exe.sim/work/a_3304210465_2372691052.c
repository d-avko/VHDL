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
static const char *ng0 = "C:/VHDL/lab2/var1_test.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_3304210465_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(75, ng0);

LAB3:    t1 = (2 * 1000LL);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4184);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4184);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4056);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3304210465_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(76, ng0);

LAB3:    t1 = (4 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4248);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4248);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4072);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3304210465_2372691052_p_2(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (8 * 1000LL);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 4312);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 4312);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 4088);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3304210465_2372691052_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 4376);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t1);

LAB2:    t11 = (t0 + 4104);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3304210465_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3304210465_2372691052_p_0,(void *)work_a_3304210465_2372691052_p_1,(void *)work_a_3304210465_2372691052_p_2,(void *)work_a_3304210465_2372691052_p_3};
	xsi_register_didat("work_a_3304210465_2372691052", "isim/var1_test_isim_beh.exe.sim/work/a_3304210465_2372691052.didat");
	xsi_register_executes(pe);
}
