.global _start

_start:
    # add16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xfe46000aff120006 # expected result
    add16 s9, s6, s7
    bne s9, s8, print_error

    # radd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xff230005ff890003# expected result
    radd16 s9, s6, s7
    bne s9, s8, print_error 

    # uradd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f2300057f890003# expected result
    uradd16 s9, s6, s7
    bne s9, s8, print_error

    # kadd16
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7FFF000aFF128000 # expected result
    kadd16 s9, s6, s7
    bne s9, s8, print_error

    # ukadd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    ukadd16 s9, s6, s7
    bne s9, s8, print_error

    # sub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeeeffff00000002 # expected result
    sub16 s9, s6, s7
    bne s9, s8, print_error

    # rsub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF777FFFF00000001 # expected result
    rsub16 s9, s6, s7
    bne s9, s8, print_error

    # ursub16
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x77777FFF00000001 # expected result
    ursub16 s9, s6, s7
    bne s9, s8, print_error

    # ksub16
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80007fff00000002 # expected result
    ksub16 s9, s6, s7
    bne s9, s8, print_error

    # uksub16
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x0001ffff0000ffff # expected result
    uksub16 s9, s6, s7
    bne s9, s8, print_error

    # cras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ff12FFFF # expected result
    cras16 s9, s6, s7
    bne s9, s8, print_error

    # rcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xff230001ff89FFFF # expected result
    rcras16 s9, s6, s7
    bne s9, s8, print_error

    # urcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7f2300017f897FFF # expected result
    urcras16 s9, s6, s7
    bne s9, s8, print_error

    # kcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0x7fff0003ff127fff # expected result
    kcras16 s9, s6, s7
    bne s9, s8, print_error

    # ukcras16
    li s6, 0x7F12000aFF787fff # rs1
    li s7, 0x00077F348000FF9a # rs2
    li s8, 0xfe460003ffffffff # expected result
    ukcras16 s9, s6, s7
    bne s9, s8, print_error

    # add8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFE120006 # expected result
    add8 s9, s6, s7
    bne s9, s8, print_error
    
    # radd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xff230005ff090003# expected result
    radd8 s9, s6, s7
    bne s9, s8, print_error 

    # uradd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f2300057f090003# expected result
    uradd8 s9, s6, s7
    bne s9, s8, print_error

    # kadd8
    li s6, 0x7F120003FF788001 # rs1
    li s7, 0x7F340007FF9a8005 # rs2
    li s8, 0x7F46000aFE128006 # expected result
    kadd8 s9, s6, s7
    bne s9, s8, print_error

    # ukadd8
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xFE46000aFFFF0006 # expected result
    ukadd8 s9, s6, s7
    bne s9, s8, print_error

    # sub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xeeee00ff00000102 # expected result
    sub8 s9, s6, s7
    bne s9, s8, print_error

    # rsub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0xF7f700FF00000001 # expected result
    rsub8 s9, s6, s7
    bne s9, s8, print_error

    # ursub8
    li s6, 0xFFFF000000000001 # rs1
    li s7, 0x111100010000FFFF # rs2
    li s8, 0x7777007f00000001 # expected result
    ursub8 s9, s6, s7
    bne s9, s8, print_error

    # ksub8
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x80017fff00000102 # expected result
    ksub8 s9, s6, s7
    bne s9, s8, print_error

    # uksub8
    li s6, 0x80007fff00000001 # rs1
    li s7, 0x7fff80000000FFFF # rs2
    li s8, 0x01ffffff0000ffff # expected result
    uksub8 s9, s6, s7
    bne s9, s8, print_error

    # run only one instance
    csrr    t0, mhartid
    bnez    t0, forever
print_hello:
    # prepare for the loop
    li      s1, 0x10000000  # UART output register   
    la      s2, hello       # load string start addr into s2
    addi    s3, s2, 13      # set up string end addr in s3
    jal     loop
print_error:
    li      s1, 0x10000000  # UART output register
    la      s2, error       # load string start addr into s2
    addi    s3, s2, 13      # set up string end addr in s3
loop:
    lb      s4, 0(s2)       # load next byte at s2 into s4
    sb      s4, 0(s1)       # write byte to UART register 
    addi    s2, s2, 1       # increase s2
    blt     s2, s3, loop    # branch back until end addr (s3) reached
forever:
    wfi
    j       forever


.section .data

hello:
  .string "hello world!\n"
error:
  .string "error!\n"
