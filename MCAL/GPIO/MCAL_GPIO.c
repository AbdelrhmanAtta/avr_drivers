/*
 * File:   MCAL_GPIO.c
 * Author: archlinux
 *
 * Created on June 20, 2025, 1:47 AM
 */

#include "MCAL_GPIO.h"


volatile uint8* DDR[] ={&DDRB, &DDRC, &DDRD};
volatile uint8* PORT[] ={&PORTB, &PORTC, &PORTD};
volatile uint8* PIN[] ={&PINB, &PINC, &PIND};



#if STD_ACTIVE == MCAL_GPIO_PIN_ACTIVE



Std_ReturnType MCAL_GPIO_PinInit(gpio_config_t* gpio_info)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == gpio_info || gpio_info->pin_index >= GPIO_MAX_PINS || gpio_info->port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else
    {
        switch (gpio_info->direction)
        {
            case (GPIO_INPUT):
                CLEAR_BIT(*((DDR[gpio_info->port_index])), gpio_info->pin_index);
                MCAL_GPIO_WritePin(gpio_info, GPIO_LOW);
                break;
            case (GPIO_OUTPUT):
                SET_BIT(*((DDR[gpio_info->port_index])), gpio_info->pin_index);
                MCAL_GPIO_WritePin(gpio_info, gpio_info->logic_level);
                break;
            case (GPIO_INPUT_PULLUP):
                CLEAR_BIT(*((DDR[gpio_info->port_index])), gpio_info->pin_index);
                MCAL_GPIO_WritePin(gpio_info, GPIO_HIGH);
                break;
            default:
                return_status = E_NOT_OK;
        }
    }
    
    return return_status;
}




Std_ReturnType MCAL_GPIO_WritePin(gpio_config_t* gpio_info, gpio_state_t gpio_state)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == gpio_info || gpio_info->pin_index >= GPIO_MAX_PINS || gpio_info->port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else
    {
        switch (gpio_state)
        {
            case (GPIO_LOW):
                CLEAR_BIT(*((PORT[gpio_info->port_index])), gpio_info->pin_index);
                gpio_info->logic_level = GPIO_LOW;
                break;
            case (GPIO_HIGH):
                SET_BIT(*((PORT[gpio_info->port_index])), gpio_info->pin_index);
                gpio_info->logic_level = GPIO_HIGH;
                break;
            default:
                return_status = E_NOT_OK;
        }
    }
    
    return return_status;  
    
}




Std_ReturnType MCAL_GPIO_TogglePin(gpio_config_t* gpio_info)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == gpio_info || gpio_info->pin_index >= GPIO_MAX_PINS || gpio_info->port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else
    {
        switch (gpio_info->logic_level)
        {
            case (GPIO_LOW):
                gpio_info->logic_level = GPIO_HIGH;
                TOGGLE_BIT(*((PORT[gpio_info->port_index])), gpio_info->pin_index);
                break;
            case (GPIO_HIGH):
                gpio_info->logic_level = GPIO_LOW;
                TOGGLE_BIT(*((PORT[gpio_info->port_index])), gpio_info->pin_index);
                break;
            default:
                return_status = E_NOT_OK;
        }
    }
    
    return return_status;   
}



Std_ReturnType MCAL_GPIO_ReadPinDirection(const gpio_config_t* gpio_info, gpio_direction_t* gpio_direction)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == gpio_info || NULL == gpio_direction || gpio_info->pin_index >= GPIO_MAX_PINS|| gpio_info->port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *gpio_direction = READ_BIT(*DDR[gpio_info->port_index], gpio_info->pin_index);
    
    return return_status;    
    
}





Std_ReturnType MCAL_GPIO_ReadPin(const gpio_config_t* gpio_info, gpio_state_t* gpio_state)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == gpio_info || NULL == gpio_state || gpio_info->pin_index >= GPIO_MAX_PINS || gpio_info->port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *gpio_state = READ_BIT(*PIN[gpio_info->port_index], gpio_info->pin_index);
    
    return return_status;    
    
}



#endif



#if STD_ACTIVE == MCAL_GPIO_PORT_ACTIVE



Std_ReturnType MCAL_GPIO_PortInit(gpio_port_index port_index, uint8 port_direction)
{
    Std_ReturnType return_status = E_OK;
    
    if(port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else
    {
        *DDR[port_index] = port_direction;
        MCAL_GPIO_WritePort(port_index, 0x00);
    }
    
    return return_status;
    
}





Std_ReturnType MCAL_GPIO_WritePort(gpio_port_index port_index, uint8 port_state)
{
    Std_ReturnType return_status = E_OK;
    
    if(port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *PORT[port_index] = port_state;
    
    return return_status;  
    
}





Std_ReturnType MCAL_GPIO_TogglePort(gpio_port_index port_index)
{
    Std_ReturnType return_status = E_OK;
    
    if(port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *PORT[port_index] ^= 0xFF;
    
    return return_status;  
    
}





Std_ReturnType MCAL_GPIO_ReadPortDirection(const gpio_port_index port_index, uint8* port_direction)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == port_direction || port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *port_direction = *DDR[port_index];
    
    return return_status;  
    
}





Std_ReturnType MCAL_GPIO_ReadPort(const gpio_port_index port_index, uint8* port_state)
{
    Std_ReturnType return_status = E_OK;
    
    if(NULL == port_state || port_index >= GPIO_MAX_PORTS) return_status = E_NOT_OK;
    else *port_state = *PORT[port_index];
    
    return return_status;    
    
}



#endif