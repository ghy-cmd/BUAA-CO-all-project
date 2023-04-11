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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001613174681_3224323566_init();
    work_m_00000000001371684115_1298333783_init();
    work_m_00000000002355598944_0919646609_init();
    work_m_00000000000218944482_1698341500_init();
    work_m_00000000002706617781_0621066737_init();
    work_m_00000000003855393322_3363942390_init();
    work_m_00000000000886528043_0757879789_init();
    work_m_00000000002015549607_4132685690_init();
    work_m_00000000002855935833_2830815785_init();
    work_m_00000000003481230522_0886308060_init();
    work_m_00000000001666411293_2875975674_init();
    work_m_00000000001459913284_2924402094_init();
    work_m_00000000002862937738_1093763706_init();
    work_m_00000000000056312757_0053799672_init();
    work_m_00000000002035989121_0249777441_init();
    work_m_00000000003755730338_0812685929_init();
    work_m_00000000002162562187_3508751931_init();
    work_m_00000000001817270312_3210399350_init();
    work_m_00000000001131226547_1452706411_init();
    work_m_00000000000671402551_3877310806_init();
    work_m_00000000003710804933_0258635663_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003710804933_0258635663");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}