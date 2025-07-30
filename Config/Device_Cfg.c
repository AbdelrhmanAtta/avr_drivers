/*
 * File:   Device_Cfg.c
 * Author: archlinux
 *
 * Created on Jun 21, 2025, 10:06 AM
 */

// ATmega328P Configuration Bit Settings

// 'C' source line config statements

#include <avr/io.h>

FUSES = {
	.low = 0xE2, // LOW {SUT_CKSEL=INTRCOSC_8MHZ_6CK_14CK_65MS, CKOUT=CLEAR, CKDIV8=CLEAR}
	.high = 0xD9, // HIGH {BOOTRST=CLEAR, BOOTSZ=2048W_3800, EESAVE=CLEAR, WDTON=CLEAR, SPIEN=SET, DWEN=CLEAR, RSTDISBL=CLEAR}
	.extended = 0xFF, // EXTENDED {BODLEVEL=DISABLED}
};

LOCKBITS = 0xFF; // {LB=NO_LOCK, BLB0=NO_LOCK, BLB1=NO_LOCK}

