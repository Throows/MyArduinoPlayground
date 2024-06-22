--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      Throows
-- @file        xmake.lua
--

-- Toolchain for AVR
toolchain("avr-gcc")

    set_kind("cross")
    set_homepage("https://gcc.gnu.org/wiki/avr-gcc")
    set_description("GNU Compiler Collection for Atmel AVR 8-bit RISC microcontrollers")

    set_toolset("cc", "avr-gcc")
    set_toolset("ld", "avr-gcc")
    set_toolset("cxx", "avr-g++")
    set_toolset("ar", "avr-ar")
    set_toolset("strip", "avr-strip")
    set_toolset("objcopy", "avr-objcopy")
    set_toolset("ranlib", "avr-ranlib")
    set_toolset("nm", "avr-nm")
    set_toolset("as", "avr-as")

    set_sdkdir(os.getenv("AVR_GCC_LIB"))
    set_bindir(os.getenv("AVR_GCC_BIN"))
    add_includedirs(os.getenv("AVR_GCC_INC"))

    on_check(function (toolchain)
        local find_tool = import("lib.detect.find_tool")
        local avr_tool = find_tool("avr-gcc")
        if (avr_tool) then
            return true
        else
            cprint("${red}AVR-GCC tool not found!${reset}") 
        end
    end)

    on_load(function (toolchain)

        local m_arch = ""
        if toolchain:is_arch("atmega238p") then
            m_arch = "-mmcu=atmega328p"
            toolchain:add("linkdirs", os.getenv("AVR_GCC_LIB") .. "\\avr5")
        end

        toolchain:load_cross_toolchain()
        toolchain:add("cxflags", m_arch)
        toolchain:add("ldflags", m_arch)
        toolchain:add("cxxflags", m_arch)
        toolchain:add("asflags", m_arch)
        toolchain:add("cxflags", m_arch)
        toolchain:add("arflags", m_arch)
    end)
toolchain_end()