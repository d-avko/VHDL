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
static const char *ng0 = "D:/XilinxLabs/Lab4/MySignatureAnalizer_tb.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1051750185_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1051750185_2372691052_p_1(char *t0)
{
    char t12[16];
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    int64 t25;

LAB0:    t1 = (t0 + 4000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    if (14 > 0)
        goto LAB4;

LAB5:    if (-1 == -1)
        goto LAB9;

LAB10:    t4 = 0;

LAB6:    t5 = (t4 - 1);
    t6 = (14 - t5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t2 = (t3 + t8);
    t9 = (t0 + 1832U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 13;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 13);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t9 = xsi_base_array_concat(t9, t12, t13, (char)97, t2, t14, (char)99, t11, (char)101);
    t18 = (14U + 1U);
    t19 = (15U != t18);
    if (t19 == 1)
        goto LAB11;

LAB12:    t16 = (t0 + 4448);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 15U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    if (14 > 0)
        goto LAB13;

LAB14:    if (-1 == -1)
        goto LAB18;

LAB19:    t4 = 0;

LAB15:    t5 = (t4 - 1);
    t6 = (14 - t5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t2 = (t3 + t8);
    t9 = (t0 + 2312U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 13;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 13);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t9 = xsi_base_array_concat(t9, t12, t13, (char)97, t2, t14, (char)99, t11, (char)101);
    t18 = (14U + 1U);
    t19 = (15U != t18);
    if (t19 == 1)
        goto LAB20;

LAB21:    t16 = (t0 + 4512);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t9, 15U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t24 = *((int64 *)t3);
    t25 = (t24 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t25);

LAB24:    *((char **)t1) = &&LAB25;

LAB1:    return;
LAB4:    if (-1 == 1)
        goto LAB7;

LAB8:    t4 = 14;
    goto LAB6;

LAB7:    t4 = 0;
    goto LAB6;

LAB9:    t4 = 14;
    goto LAB6;

LAB11:    xsi_size_not_matching(15U, t18, 0);
    goto LAB12;

LAB13:    if (-1 == 1)
        goto LAB16;

LAB17:    t4 = 14;
    goto LAB15;

LAB16:    t4 = 0;
    goto LAB15;

LAB18:    t4 = 14;
    goto LAB15;

LAB20:    xsi_size_not_matching(15U, t18, 0);
    goto LAB21;

LAB22:    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_1051750185_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1051750185_2372691052_p_0,(void *)work_a_1051750185_2372691052_p_1};
	xsi_register_didat("work_a_1051750185_2372691052", "isim/MySignatureAnalizer_tb_isim_beh.exe.sim/work/a_1051750185_2372691052.didat");
	xsi_register_executes(pe);
}
