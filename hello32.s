.global _start

_start:
    # add16
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xff120006 # expected result
    add16 s9, s6, s7
    bne s9, s8, print_error

    # radd16
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xff890003 # expected result
    radd16 s9, s6, s7
    bne s9, s8, print_error 

    # uradd16
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0x7f890003 # expected result
    uradd16 s9, s6, s7
    bne s9, s8, print_error

    # kadd16
    li s6, 0xFF788001 # rs1
    li s7, 0xFF9a8005 # rs2
    li s8, 0xFF128000 # expected result
    kadd16 s9, s6, s7
    bne s9, s8, print_error

    # ukadd16
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xFFFF0006 # expected result
    ukadd16 s9, s6, s7
    bne s9, s8, print_error

    # sub16
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000002 # expected result
    sub16 s9, s6, s7
    bne s9, s8, print_error

    # rsub16
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000001 # expected result
    rsub16 s9, s6, s7
    bne s9, s8, print_error

    # ursub16
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000001 # expected result
    ursub16 s9, s6, s7
    bne s9, s8, print_error

    # ksub16
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000002 # expected result
    ksub16 s9, s6, s7
    bne s9, s8, print_error

    # uksub16
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x0000ffff # expected result
    uksub16 s9, s6, s7
    bne s9, s8, print_error

    # cras16
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xff12FFFF # expected result
    cras16 s9, s6, s7
    bne s9, s8, print_error

    # rcras16
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xff89FFFF # expected result
    rcras16 s9, s6, s7
    bne s9, s8, print_error

    # urcras16
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0x7f897FFF # expected result
    urcras16 s9, s6, s7
    bne s9, s8, print_error

    # kcras16
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xff127fff # expected result
    kcras16 s9, s6, s7
    bne s9, s8, print_error

    # ukcras16
    li s6, 0xFF787fff # rs1
    li s7, 0x8000FF9a # rs2
    li s8, 0xffffffff # expected result
    ukcras16 s9, s6, s7
    bne s9, s8, print_error

    # add8
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xFE120006 # expected result
    add8 s9, s6, s7
    bne s9, s8, print_error
    
    # radd8
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xff090003 # expected result
    radd8 s9, s6, s7
    bne s9, s8, print_error 

    # uradd8
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0x7f090003 # expected result
    uradd8 s9, s6, s7
    bne s9, s8, print_error

    # kadd8
    li s6, 0xFF788001 # rs1
    li s7, 0xFF9a8005 # rs2
    li s8, 0xFE128006 # expected result
    kadd8 s9, s6, s7
    bne s9, s8, print_error

    # ukadd8
    li s6, 0xFF780001 # rs1
    li s7, 0xFF9a0005 # rs2
    li s8, 0xFFFF0006 # expected result
    ukadd8 s9, s6, s7
    bne s9, s8, print_error

    # sub8
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000102 # expected result
    sub8 s9, s6, s7
    bne s9, s8, print_error

    # rsub8
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000001 # expected result
    rsub8 s9, s6, s7
    bne s9, s8, print_error

    # ursub8
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000001 # expected result
    ursub8 s9, s6, s7
    bne s9, s8, print_error

    # ksub8
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000102 # expected result
    ksub8 s9, s6, s7
    bne s9, s8, print_error

    # uksub8
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x0000ffff # expected result
    uksub8 s9, s6, s7
    bne s9, s8, print_error

    # sra16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00000222 # expected result
    sra16 s9, s6, s7
    bne s9, s8, print_error

    # srai16
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    srai16 s9, s6, 3
    bne s9, s8, print_error

    # sra16.u
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00000222 # expected result
    sra16.u s9, s6, s7
    bne s9, s8, print_error

    # srai16.u
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    srai16.u s9, s6, 3
    bne s9, s8, print_error

    # srl16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00000222 # expected result
    srl16 s9, s6, s7
    bne s9, s8, print_error

    # srli16
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    srli16 s9, s6, 3
    bne s9, s8, print_error

    # srl16.u
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00000222 # expected result
    srl16.u s9, s6, s7
    bne s9, s8, print_error

    # srli16.u
    li s6, 0x00001111 # rs1
    li s8, 0x00000222 # expected result
    srli16.u s9, s6, 3
    bne s9, s8, print_error

    # sll16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00008888 # expected result
    sll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0x00001111 # rs1
    li s8, 0x00008888 # expected result
    slli16 s9, s6, 3
    bne s9, s8, print_error

    # ksll16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x00007fff # expected result
    ksll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0x00001111 # rs1
    li s8, 0x00007fff # expected result
    kslli16 s9, s6, 3
    bne s9, s8, print_error

    # kslra16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFe3 # rs2
    li s8, 0x00007fff # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFFD # rs2
    li s8, 0x00000222 # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFe3 # rs2
    li s8, 0x00007fff # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x00001111 # rs1
    li s7, 0xFFFFFFFD # rs2
    li s8, 0x00000222 # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # sra8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x06040200 # expected result
    sra8 s9, s6, s7
    bne s9, s8, print_error

    # srai8
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    srai8 s9, s6, 3
    bne s9, s8, print_error

    # sra8.u
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x06040200 # expected result
    sra8.u s9, s6, s7
    bne s9, s8, print_error

    # srai8.u
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    srai8.u s9, s6, 3
    bne s9, s8, print_error

    # srl8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x06040200 # expected result
    srl8 s9, s6, s7
    bne s9, s8, print_error

    # srli8
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    srli8 s9, s6, 3
    bne s9, s8, print_error

    # srl8.u
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x06040200 # expected result
    srl8.u s9, s6, s7
    bne s9, s8, print_error

    # srli8.u
    li s6, 0x33221100 # rs1
    li s8, 0x06040200 # expected result
    srli8.u s9, s6, 3
    bne s9, s8, print_error

    # sll8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x98108800 # expected result
    sll8 s9, s6, s7
    bne s9, s8, print_error

    # slli8
    li s6, 0x33221100 # rs1
    li s8, 0x98108800 # expected result
    slli8 s9, s6, 3
    bne s9, s8, print_error

    # ksll8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFB # rs2
    li s8, 0x7f7f7f00 # expected result
    ksll8 s9, s6, s7
    bne s9, s8, print_error

    # kslli8
    li s6, 0x33221100 # rs1
    li s8, 0x7f7f7f00 # expected result
    kslli8 s9, s6, 3
    bne s9, s8, print_error

    # kslra8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x7f7f7f00 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFD # rs2
    li s8, 0x06040200 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFF3 # rs2
    li s8, 0x7f7f7f00 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0x33221100 # rs1
    li s7, 0xFFFFFFFD # rs2
    li s8, 0x06040200 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # cmpeq16
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF0000 # expected result
    cmpeq16 s9, s6, s7
    bne s9, s8, print_error

    # scmplt16
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # scmple16
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0xFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt16
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # ucmple16
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0xFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # cmpeq8
    li s6, 0x12340000 # rs1
    li s7, 0x12341000 # rs2
    li s8, 0xFFFF00FF # expected result
    cmpeq8 s9, s6, s7
    bne s9, s8, print_error

    # scmplt8
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # scmple8
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0xFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt8
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0x000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # ucmple8
    li s6, 0x12340000 # rs1
    li s7, 0x12340001 # rs2
    li s8, 0xFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # smul16
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    smul16 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # smulx16
    li s6, 0x12340001 # rs1
    li s7, 0xFFFF1234 # rs2
    li s10, 0xFFFFFFFF # expected result
    li s11, 0x014b5a90 # expected result
    smulx16 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # umul16
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x014b5a90 # expected result
    umul16 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # umulx16
    li s6, 0x12340000 # rs1
    li s7, 0x00011234 # rs2
    li s10, 0x00000000 # expected result
    li s11, 0x014b5a90 # expected result
    umulx16 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # khm16
    li s6, 0x7FFF0001 # rs1
    li s7, 0x8000FFFF # rs2
    li s10, 0x8001ffff # expected result
    khm16 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

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
