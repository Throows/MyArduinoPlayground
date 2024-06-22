#include <avr/io.h>

// LED - PB5
// Button - PD2

void delay(volatile long cycles) 
{
    while (cycles > 0) 
    {
        cycles--;
    }
}

int main() 
{
    
    DDRB |= (1 << PB5);     // Set PB5 as output
    DDRD &= ~(1 << PD2);    // Set PD3 as input

    while (1) 
    {
        if (!(PIND & (1 << PD2))) 
        {
            PORTB |= (1 << PB5);    // Turn on LED
        } 
        else 
        {
            PORTB &= ~(1 << PB5);   // Turn off LED
        }
        
        delay(10000);
    }
    return 0;
}