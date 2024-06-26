includes(os.projectdir() .. "\\..\\..\\xmake\\toolchains\\avr-gcc\\xmake.lua")

target("button_led_controller")
    set_kind("binary")
    set_version("1.0.0")
    add_files("src/*.c")
    add_defines("__AVR_ATmega328P__")
    set_plat("cross")
    set_arch("atmega238p")
    set_toolchains("avr-gcc")
    set_symbols("debug")
    set_optimize("none")
    set_warnings("allextra")
    set_languages("c99")
    set_rundir("./bin/atmega328p")
    set_targetdir("./bin/atmega328p")
    after_build(function (target)
        os.exec("avr-objcopy -O ihex -j .text -j .data $(projectdir)/bin/atmega328p/button_led_controller $(projectdir)/bin/atmega328p/button_led_controller.hex")
        os.exec("avrdude -C " .. os.getenv("AVRDUDE") .. "\\avrdude.conf -p m328p -c arduino -P COM4 -D -U flash:w:$(projectdir)/bin/atmega328p/button_led_controller.hex:i") -- To be changed
    end)

target_end()