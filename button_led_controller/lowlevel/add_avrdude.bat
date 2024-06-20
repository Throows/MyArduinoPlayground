@echo off

set AVR_HOME=%userprofile%\.platformio\packages\tool-avrdude
set AVR_GCC=%userprofile%\.platformio\packages\toolchain-atmelavr\bin
set PATH=%PATH%;%AVR_HOME%;%AVR_GCC%

pause