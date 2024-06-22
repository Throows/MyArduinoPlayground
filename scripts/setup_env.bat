@echo off

set AVRDUDE=%userprofile%\.platformio\packages\tool-avrdude
set AVR_GCC_BIN=%userprofile%\.platformio\packages\toolchain-atmelavr\bin
set AVR_GCC_TOOLSET=%userprofile%\.platformio\packages\toolchain-atmelavr\avr\bin
set AVR_GCC_LIB=%userprofile%\.platformio\packages\toolchain-atmelavr\avr\lib
set AVR_GCC_INC=%userprofile%\.platformio\packages\toolchain-atmelavr\avr\include
set PATH=%PATH%;%AVRDUDE%;%AVR_GCC_BIN%

:: DOSKEY test=echo test