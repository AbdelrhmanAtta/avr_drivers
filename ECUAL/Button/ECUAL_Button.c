/*
 * File:   ECUAL_Button.c
 * Author: archlinux
 *
 * Created on June 30, 2025, 5:31 PM
 */

#include "ECUAL_Button.h"



//#if STD_ON == ECUAL_BUTTON_ACTIVE



Std_ReturnType ECUAL_Button_Init(button_config_t* btn_config)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == btn_config) return_status = E_NOT_OK;
    else
    {
        MCAL_GPIO_PinInit(&btn_config->btn_info);
    }
    
    return return_status;  
}


Std_ReturnType ECUAL_Button_Read(button_config_t* btn_config, button_state_t* btn_state)
{
    Std_ReturnType return_status = E_OK;

    if (NULL == btn_config || NULL == btn_state) {
        return_status = E_NOT_OK;
    } 
    else {
        gpio_state_t temp_state;
        MCAL_GPIO_ReadPin(&btn_config->btn_info, &temp_state);
        switch (btn_config->btn_active) 
        {
            case BUTTON_ACTIVE_HIGH:
                *btn_state = (button_state_t)temp_state;
                break;

            case BUTTON_ACTIVE_LOW:
                *btn_state = (button_state_t)!temp_state;
                break;

            default:
                return_status = E_NOT_OK;
                break;
        }
        btn_config->btn_state = *btn_state;
    }

    return return_status;
}
