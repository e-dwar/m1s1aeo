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

/* This file is designed for use with ISim build 0xcb73ee62 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/wared/Workspace/m1s1aeo/TP2/minimux.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3149057673_3212880686_p_0(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    t1 = (t0 + 1712U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t2 = (t0 + 3291);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB9:    t6 = (t0 + 3293);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB10:    t9 = (t0 + 3295);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB11:
LAB8:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t4 = ((IEEE_P_2592010699) + 2332);
    t6 = (t0 + 3216U);
    t2 = xsi_base_array_concat(t2, t18, t4, (char)99, (unsigned char)2, (char)97, t3, t6, (char)101);
    t7 = (t0 + 1952);
    t9 = (t7 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 5U);
    xsi_driver_first_trans_fast_port(t7);

LAB4:    xsi_set_current_line(45, ng0);

LAB15:    t2 = (t0 + 1908);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(46, ng0);
    t12 = (t0 + 592U);
    t13 = *((char **)t12);
    t12 = (t0 + 1952);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t13, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB4;

LAB6:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t4 = ((IEEE_P_2592010699) + 2332);
    t6 = (t0 + 3184U);
    t2 = xsi_base_array_concat(t2, t18, t4, (char)99, (unsigned char)2, (char)97, t3, t6, (char)101);
    t7 = (t0 + 1952);
    t9 = (t7 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 5U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB7:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = ((IEEE_P_2592010699) + 2332);
    t6 = (t0 + 3200U);
    t2 = xsi_base_array_concat(t2, t18, t4, (char)99, (unsigned char)2, (char)97, t3, t6, (char)101);
    t7 = (t0 + 1952);
    t9 = (t7 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 5U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB12:;
LAB13:    t3 = (t0 + 1908);
    *((int *)t3) = 0;
    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_3149057673_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3149057673_3212880686_p_0};
	xsi_register_didat("work_a_3149057673_3212880686", "isim/calc_tb_isim_beh.exe.sim/work/a_3149057673_3212880686.didat");
	xsi_register_executes(pe);
}
