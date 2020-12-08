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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *VL_P_2533777724;
char *IEEE_P_2592010699;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_u_00000000001518412038_0211181436_init();
    simprims_ver_m_00000000000515035322_0832149765_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000001255213976_3226743947_init();
    simprims_ver_m_00000000003359274523_2662658903_init();
    simprims_ver_m_00000000000648012491_3151998091_init();
    simprims_ver_m_00000000001867363923_1692233196_init();
    work_m_00000000003983727179_2711678662_init();
    ieee_p_2592010699_init();
    vl_p_2533777724_init();
    work_a_3965266762_2372691052_init();


    xsi_register_tops("work_a_3965266762_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
