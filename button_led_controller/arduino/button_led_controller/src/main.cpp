/*----------------------------------------------------------------------------*/
/*  Author      : Romain Berthoule                                            */
/*  Date        : 20/06/2024                                                  */
/*  Project     : button_led_controller                                       */
/*  File        : main.cpp                                                    */
/*  CPU         : ATMega 428p (Arduino)                                       */
/*  Description : Control a LED by pressing a button                          */
/*----------------------------------------------------------------------------*/

#include <Arduino.h>


void setup() 
{
  // put your setup code here, to run once:
  pinMode(13, OUTPUT);
  pinMode(2, INPUT);
  digitalWrite(13, LOW);
  //Serial.begin(115200);
  //Serial.println("Setup done!");
}

void loop() 
{
  // put your main code here, to run repeatedly:
  if(digitalRead(2) == LOW)
  {
    digitalWrite(13, HIGH);
  }
  else
  {
    digitalWrite(13, LOW);
  }
  delay(100);
}