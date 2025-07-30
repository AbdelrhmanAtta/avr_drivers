/*
 * File:   ECUAL_LED.c
 * Author: archlinux
 *
 * Created on June 30, 2025, 5:31 PM
 */

#include "ECUAL_LED.h"



#if STD_ON == ECUAL_LED_ACTIVE



Std_ReturnType ECUAL_LED_Init(led_config_t *led_config)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == led_config) return_status = E_NOT_OK;
    else
    {
        gpio_config_t gpio_config = {.direction = GPIO_OUTPUT, .logic_level = led_config->led_state,
                                    .pin_index = led_config->led_pin, .port_index = led_config->led_port};
        MCAL_GPIO_PinInit(&gpio_config);
    }
    
    return return_status;   
}


Std_ReturnType ECUAL_LED_On(led_config_t *led_config)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == led_config) return_status = E_NOT_OK;
    else
    {
        gpio_config_t gpio_config = {.direction = GPIO_OUTPUT, .logic_level = led_config->led_state,
                                    .pin_index = led_config->led_pin, .port_index = led_config->led_port};
        MCAL_GPIO_WritePin(&gpio_config, GPIO_HIGH);
    }
    
    return return_status;   
}


Std_ReturnType ECUAL_LED_Off(led_config_t *led_config){
    Std_ReturnType return_status = E_OK;
    
    if(NULL == led_config) return_status = E_NOT_OK;
    else
    {
        gpio_config_t gpio_config = {.direction = GPIO_OUTPUT, .logic_level = led_config->led_state,
                                    .pin_index = led_config->led_pin, .port_index = led_config->led_port};
        MCAL_GPIO_WritePin(&gpio_config, GPIO_LOW);
    }
    
    return return_status;   
}


Std_ReturnType ECUAL_LED_Toggle(led_config_t *led_config)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == led_config) return_status = E_NOT_OK;
    else
    {
        gpio_config_t gpio_config = {.direction = GPIO_OUTPUT, .logic_level = led_config->led_state,
                                    .pin_index = led_config->led_pin, .port_index = led_config->led_port};
        MCAL_GPIO_TogglePin(&gpio_config);
    }
    
    return return_status;   
}



#endif
