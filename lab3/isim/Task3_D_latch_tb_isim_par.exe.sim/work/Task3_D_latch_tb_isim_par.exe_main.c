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

char *STD_STANDARD;
char *VL_P_2533777724;
char *IEEE_P_2592010699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_m_00000000000648012491_3151998091_2223575826_init();
    simprims_ver_m_00000000000648012491_3151998091_3043035535_init();
    simprims_ver_m_00000000001867363923_1692233196_2223575826_init();
    simprims_ver_m_00000000001867363923_1692233196_3043035535_init();
    simprims_ver_m_00000000003615849920_1652640544_2384456854_init();
    simprims_ver_m_00000000003615849920_3380231405_2384456854_init();
    simprims_ver_m_00000000003359274523_2662658903_3919760131_init();
    simprims_ver_m_00000000001255213976_2021654676_3919760131_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    work_m_00000000003108017200_0706376620_init();
    work_m_00000000003366300232_3820247155_init();
    ieee_p_2592010699_init();
    vl_p_2533777724_init();
    work_a_0028242395_2372691052_init();


    xsi_register_tops("work_a_0028242395_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);

    return xsi_run_simulation(argc, argv);

}
