/* 
 * File:   MCAL_GPIO.h
 * Author: archlinux
 *
 * Created on June 20, 2025, 11:18 PM
 */

#ifndef HAL_GPIO_H
#define	HAL_GPIO_H

/*-----Includes-----*/
#include "../../Std/Std_Libraries.h"
#include "../../Config/GPIO_Cfg.h"


/*-----Macros-----*/


/*-----Macros Functions-----*/


/*-----Data Types-----*/
typedef enum
{
    GPIO_INPUT = 0,
    GPIO_OUTPUT,
    GPIO_INPUT_PULLUP
}gpio_direction_t;

typedef enum
{
    GPIO_LOW = 0,
    GPIO_HIGH
}gpio_state_t;

typedef enum
{
    PORTB_INDEX = 0,
    PORTC_INDEX,
    PORTD_INDEX
}gpio_port_index;

typedef struct
{
    uint8 pin_index : 3;
    uint8 port_index : 2;
    uint8 direction : 2;
    uint8 logic_level : 1;
}gpio_config_t;


/*-----Functions Declarations-----*/
Std_ReturnType MCAL_GPIO_PinInit(gpio_config_t* gpio_info);
Std_ReturnType MCAL_GPIO_WritePin(gpio_config_t* gpio_info, gpio_state_t gpio_state);
Std_ReturnType MCAL_GPIO_TogglePin(gpio_config_t* gpio_info);
Std_ReturnType MCAL_GPIO_ReadPinDirection(const gpio_config_t* gpio_info, gpio_direction_t* gpio_direction);
Std_ReturnType MCAL_GPIO_ReadPin(const gpio_config_t* gpio_info, gpio_state_t* gpio_state);

Std_ReturnType MCAL_GPIO_PortInit(gpio_port_index port_index, uint8 port_direction);
Std_ReturnType MCAL_GPIO_WritePort(gpio_port_index port_index, uint8 port_state);;
Std_ReturnType MCAL_GPIO_TogglePort(gpio_port_index port_index);
Std_ReturnType MCAL_GPIO_ReadPortDirection(const gpio_port_index port_index, uint8* port_direction);
Std_ReturnType MCAL_GPIO_ReadPort(const gpio_port_index port_index, uint8* port_state);



#endif	/* HAL_GPIO_H */

