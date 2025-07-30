/* 
 * File:   ECUAL_Button.h
 * Author: archlinux
 *
 * Created on July 30, 2025, 4:13 PM
 */

#ifndef ECUAL_BUTTON_H
#define	ECUAL_BUTTON_H

/*-----Includes-----*/
#include "../../Std/Std_Libraries.h"
#include "../../MCAL/GPIO/MCAL_GPIO.h"
//#include "../../Config/Button_Cfg.h"


/*-----Macros-----*/


/*-----Macros Functions-----*/


/*-----Data Types-----*/
typedef enum
{
    BUTTON_RELEASED = 0,
    BUTTON_PRESSED
}button_state_t;

typedef enum
{
    BUTTON_ACTIVE_LOW = 0,
    BUTTON_ACTIVE_HIGH
}button_active_t;

typedef struct
{
    gpio_config_t btn_info;
    button_active_t btn_active;
    button_state_t btn_state;
}button_config_t;


/*-----Functions Declarations-----*/
Std_ReturnType ECUAL_Button_Init(button_config_t* btn_config);
Std_ReturnType ECUAL_Button_Read(button_config_t* btn_config, button_state_t* btn_state);



#endif	/* ECUAL_BUTTON_H */

