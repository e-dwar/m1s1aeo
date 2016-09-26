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
static const char *ng0 = "E:/wared/Workspace/m1s1aeo/TP2/or4.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_2472025866_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(42, ng0);

LAB3:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2704U);
    t4 = (t0 + 684U);
    t5 = *((char **)t4);
    t4 = (t0 + 2720U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t0 + 1676);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 4U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 1632);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2472025866_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2472025866_3212880686_p_0};
	xsi_register_didat("work_a_2472025866_3212880686", "isim/calc_tb_isim_beh.exe.sim/work/a_2472025866_3212880686.didat");
	xsi_register_executes(pe);
}
