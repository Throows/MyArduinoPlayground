avr-gcc -Os -mmcu=atmega328p src/main.c
avr-objcopy -O ihex -j .text -j .data a.out a.hex
avrdude -C %AVR_HOME%/avrdude.conf -p m328p -c arduino -P COM4 -U flash:w:a.hex:i