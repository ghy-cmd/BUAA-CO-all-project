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
    work_m_00000000003420978763_3224323566_init();
    work_m_00000000003121926862_2226095958_init();
    work_m_00000000003794000910_1119861224_init();
    work_m_00000000002265745382_1621229167_init();
    work_m_00000000001782874833_2431367360_init();
    work_m_00000000002978325926_3319977416_init();
    work_m_00000000000277053438_3138527025_init();
    work_m_00000000001394506214_0886308060_init();
    work_m_00000000000800788000_2830815785_init();
    work_m_00000000000034715589_2916262309_init();
    work_m_00000000000048053491_2924402094_init();
    work_m_00000000000056312757_0053799672_init();
    work_m_00000000001284102517_0249777441_init();
    work_m_00000000000523035401_1093763706_init();
    work_m_00000000002173627971_0103117755_init();
    work_m_00000000003445192432_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003445192432_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
