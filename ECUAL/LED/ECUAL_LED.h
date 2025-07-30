/* 
 * File:   ECUAL_LED.h
 * Author: archlinux
 *
 * Created on July 30, 2025, 2:21 PM
 */

#ifndef ECUAL_LED_H
#define	ECUAL_LED_H

/*-----Includes-----*/
#include "../../Std/Std_Libraries.h"
#include "../../MCAL/GPIO/MCAL_GPIO.h"
#include "../../Config/LED_Cfg.h"


/*-----Macros-----*/


/*-----Macros Functions-----*/


/*-----Data Types-----*/
typedef enum
{
    LED_OFF = 0,
    LED_ON
}led_state_t;

typedef struct
{
    uint8 led_port : 3;
    uint8 led_pin : 3;
    led_state_t led_state : 1;
}led_config_t;


/*-----Functions Declarations-----*/
Std_ReturnType ECUAL_LED_Init(led_config_t *led_config);
Std_ReturnType ECUAL_LED_On(led_config_t *led_config);
Std_ReturnType ECUAL_LED_Off(led_config_t *led_config);
Std_ReturnType ECUAL_LED_Toggle(led_config_t *led_config);



#endif	/* ECUAL_LED_H */

