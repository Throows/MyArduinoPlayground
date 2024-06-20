
#define DDRB (*(volatile unsigned char*)0x24)
#define PORTB (*(volatile unsigned char*)0x25)
#define DDRD (*(volatile unsigned char*)0x2A)
#define PIND (*(volatile unsigned char*)0x29)

#define PB5 5   // LED
#define PD2 2   // Button

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
        
        // Delay
        for (volatile long i = 0; i < 1000; i++) 
        {
            asm("nop");
        }
    }
    return 0;
}