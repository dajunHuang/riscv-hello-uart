define hook-quit
    set confirm off
end

alias ir = info reg s6 s7 s9 s8

file hello.elf
target remote localhost:1234
b _start
c
