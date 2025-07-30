/* 
 * File:   Std_Types.h
 * Author: archlinux
 *
 * Created on June 20, 2025, 11:17 PM
 */

#ifndef STD_TYPES_H
#define	STD_TYPES_H



/*-----Includes-----*/



/*-----Macros-----*/
#define STD_HIGH    0x01
#define STD_LOW     0x00

#define STD_ON      0x01
#define STD_OFF     0x00

#define STD_ACTIVE  0x01
#define STD_IDLE    0x00

#define CONFIG_ENABLE      0x01
#define CONFIG_DISABLE     0x00

#define E_OK        (Std_ReturnType)0x01
#define E_NOT_OK    (Std_ReturnType)0x00


/*-----Macros Functions-----*/
#define H_REG(_x)   (*((volatile uint8 *)_x))

#define SET_BIT(REG_ADDR, BIT_POS)      (REG_ADDR |= (1 << BIT_POS))
#define CLEAR_BIT(REG_ADDR, BIT_POS)    (REG_ADDR &= ~(1 << BIT_POS))
#define TOGGLE_BIT(REG_ADDR, BIT_POS)   (REG_ADDR ^= (1 << BIT_POS))
#define READ_BIT(REG_ADDR, BIT_POS)     ((REG_ADDR >> BIT_POS) & 1)


/*-----Data Types-----*/
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
typedef signed char sint8;
typedef signed short sint16;
typedef signed long sint32;

typedef uint8 Std_ReturnType;


/*-----Functions Declarations-----*/



#endif	/* STD_TYPES_H */

