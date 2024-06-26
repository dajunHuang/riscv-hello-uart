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

    # smul8
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    smul8 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # smulx8
    li s6, 0x1234FFFF # rs1
    li s7, 0x34120100 # rs2
    li s10, 0x0000FFFF # expected result
    li s11, 0x01440a90 # expected result
    smulx8 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # umul8
    li s6, 0x1234FFFF # rs1
    li s7, 0x12340001 # rs2
    li s10, 0x000000FF # expected result
    li s11, 0x01440a90 # expected result
    umul8 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # umulx8
    li s6, 0x1234FFFF # rs1
    li s7, 0x34120100 # rs2
    li s10, 0x000000FF # expected result
    li s11, 0x01440a90 # expected result
    umulx8 s8, s6, s7
    bne s10, s8, print_error
    bne s11, s9, print_error

    # khm8
    li s6, 0x807F0001 # rs1
    li s7, 0x8080FFFF # rs2
    li s10, 0x7F8100ff # expected result
    khm8 s8, s6, s7
    bne s10, s8, print_error

    # smin16
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    smin16 s8, s6, s7
    bne s10, s8, print_error

    # umin16
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    umin16 s8, s6, s7
    bne s10, s8, print_error

    # smax16
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7FFF7FFF # expected result
    smax16 s8, s6, s7
    bne s10, s8, print_error

    # umax16
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80008000 # expected result
    umax16 s8, s6, s7
    bne s10, s8, print_error

    # sclip16
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000FFFF0 # rs1
    sclip16 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip16
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000F0000 # rs1
    uclip16 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs16
    li s6, 0x00007FFF # rs1
    li s8, 0x00007FFF # rs1
    kabs16 s9, s6
    bne s9, s8, print_error

    # clrs16
    li s6, 0x000F7FFF # rs1
    li s8, 0x000B0000 # rs1
    clrs16 s9, s6
    bne s9, s8, print_error

    # clz16
    li s6, 0x000F7FFF # rs1
    li s8, 0x000C0001 # rs1
    clz16 s9, s6
    bne s9, s8, print_error

    # smin8
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    smin8 s8, s6, s7
    bne s10, s8, print_error

    # umin8
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    umin8 s8, s6, s7
    bne s10, s8, print_error

    # smax8
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x7F007F00 # expected result
    smax8 s8, s6, s7
    bne s10, s8, print_error

    # umax8
    li s6,  0x7FFF8000 # rs1
    li s7,  0x80007FFF # rs2
    li s10, 0x80FF80FF # expected result
    umax8 s8, s6, s7
    bne s10, s8, print_error

    # sclip8
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000FFFF0 # expected result
    sclip8 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip8
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000F0000 # expected result
    uclip8 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs8
    li s6, 0x00007FFF # rs1
    li s8, 0x00007F01 # expected result
    kabs8 s9, s6
    bne s9, s8, print_error

    # clrs8
    li s6, 0x000F7FFF # rs1
    li s8, 0x07030007 # expected result
    clrs8 s9, s6
    bne s9, s8, print_error

    # clz8
    li s6, 0x000F7FFF # rs1
    li s8, 0x08040100 # expected result
    clz8 s9, s6
    bne s9, s8, print_error

    # sunpkd810
    li s6, 0x7766F5F4 # rs1
    li s8, 0xFFF5FFF4 # expected result
    sunpkd810 s9, s6
    bne s9, s8, print_error

    # sunpkd820
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0066FFF4 # expected result
    sunpkd820 s9, s6
    bne s9, s8, print_error

    # sunpkd830
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0077FFF4 # expected result
    sunpkd830 s9, s6
    bne s9, s8, print_error

    # sunpkd831
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0077FFF5 # expected result
    sunpkd831 s9, s6
    bne s9, s8, print_error

    # sunpkd832
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00770066 # expected result
    sunpkd832 s9, s6
    bne s9, s8, print_error

    # zunpkd810
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00F500F4 # expected result
    zunpkd810 s9, s6
    bne s9, s8, print_error

    # zunpkd820
    li s6, 0x7766F5F4 # rs1
    li s8, 0x006600F4 # expected result
    zunpkd820 s9, s6
    bne s9, s8, print_error

    # zunpkd830
    li s6, 0x7766F5F4 # rs1
    li s8, 0x007700F4 # expected result
    zunpkd830 s9, s6
    bne s9, s8, print_error

    # zunpkd831
    li s6, 0x7766F5F4 # rs1
    li s8, 0x007700F5 # expected result
    zunpkd831 s9, s6
    bne s9, s8, print_error

    # zunpkd832
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00770066 # expected result
    zunpkd832 s9, s6
    bne s9, s8, print_error 

    # # pkbb16
    # li s6, 0x44443333 # rs1
    # li s7, 0x88887777 # rs2
    # li s8, 0x33337777 # expected result
    # pkbb16 s9, s6, s7
    # bne s9, s8, print_error

    # pkbt16
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x33338888 # expected result
    pkbt16 s9, s6, s7
    bne s9, s8, print_error

    # pktb16
    li s6, 0x44443333 # rs1
    li s7, 0x88887777 # rs2
    li s8, 0x44447777 # expected result
    pktb16 s9, s6, s7
    bne s9, s8, print_error

    # # pktt16
    # li s6, 0x44443333 # rs1
    # li s7, 0x88887777 # rs2
    # li s8, 0x44448888 # expected result
    # pktt16 s9, s6, s7
    # bne s9, s8, print_error

    # # smmul
    # li s6, 0x00000001 # rs1
    # li s7, 0xFFFFFFFF # rs2
    # li s8, 0xFFFFFFFF # expected result
    # smmul s9, s6, s7
    # bne s9, s8, print_error

    # smmul_u
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    smmul.u s9, s6, s7
    bne s9, s8, print_error

    # kmmac
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7FFFFFFF # expected result
    kmmac s9, s6, s7
    bne s9, s8, print_error

    # kmmac_u
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    kmmac.u s9, s6, s7
    bne s9, s8, print_error

    # kwmmul
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    kwmmul s9, s6, s7
    bne s9, s8, print_error

    # kwmmul_u
    li s6, 0x00000001 # rs1
    li s7, 0xFFFFFFFF # rs2
    li s8, 0x00000000 # expected result
    kwmmul.u s9, s6, s7
    bne s9, s8, print_error

    # smmwb
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0xFFFFFFFF # expected result
    smmwb s9, s6, s7
    bne s9, s8, print_error

    # smmwb_u
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s8, 0x00000000 # expected result
    smmwb.u s9, s6, s7
    bne s9, s8, print_error

    # smmwt
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0xFFFFFFFF # expected result
    smmwt s9, s6, s7
    bne s9, s8, print_error

    # smmwt_u
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s8, 0x00000000 # expected result
    smmwt.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawb
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7FFFFFFF # expected result
    kmmawb s9, s6, s7
    bne s9, s8, print_error

    # kmmawb_u
    li s6, 0x00000001 # rs1
    li s7, 0x0000FFFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    kmmawb.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawt
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7FFFFFFF # expected result
    kmmawt s9, s6, s7
    bne s9, s8, print_error

    # kmmawt_u
    li s6, 0x00000001 # rs1
    li s7, 0xFFFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x00000001 # expected result
    kmmawt.u s9, s6, s7
    bne s9, s8, print_error

    # kmmwb2
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x00007FFF # rs2
    li s8, 0x7ffeffff # expected result
    kmmwb2 s9, s6, s7
    bne s9, s8, print_error

    # kmmwb2_u
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x00007FFF # rs2
    li s8, 0x7ffeffff # expected result
    kmmwb2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmwt2
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFF0000 # rs2
    li s8, 0x7ffeffff # expected result
    kmmwt2 s9, s6, s7
    bne s9, s8, print_error

    # kmmwt2_u
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFF0000 # rs2
    li s8, 0x7ffeffff # expected result
    kmmwt2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawb2
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x00007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7fff0000 # expected result
    kmmawb2 s9, s6, s7
    bne s9, s8, print_error

    # kmmawb2_u
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x00007FFF # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7fff0000 # expected result
    kmmawb2.u s9, s6, s7
    bne s9, s8, print_error

    # kmmawt2
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7fff0000 # expected result
    kmmawt2 s9, s6, s7
    bne s9, s8, print_error

    # kmmawt2_u
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFF0000 # rs2
    li s9, 0x00000001 # rd
    li s8, 0x7fff0000 # expected result
    kmmawt2.u s9, s6, s7
    bne s9, s8, print_error

    # smbb16
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s8, 0x3FFF0001 # expected result
    smbb16 s9, s6, s7
    bne s9, s8, print_error

    # smbt16
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    smbt16 s9, s6, s7
    bne s9, s8, print_error

    # smtt16
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s8, 0x3FFF0001 # expected result
    smtt16 s9, s6, s7
    bne s9, s8, print_error

    # kmda
    li s6, 0x00017FFF # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    kmda s9, s6, s7
    bne s9, s8, print_error

    # kmxda
    li s6, 0x7FFF0001 # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x3FFF0002 # expected result
    kmxda s9, s6, s7
    bne s9, s8, print_error

    # smds
    li s6, 0x7FFF0001 # rs1
    li s7, 0x00017FFF # rs2
    li s8, 0x00000000 # expected result
    smds s9, s6, s7
    bne s9, s8, print_error

    # smdrs
    li s6, 0x00017FFF # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    smdrs s9, s6, s7
    bne s9, s8, print_error

    # smxds
    li s6, 0x7FFF0001 # rs1
    li s7, 0x7FFF0001 # rs2
    li s8, 0x00000000 # expected result
    smxds s9, s6, s7
    bne s9, s8, print_error

    # kmabb
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0x7FFFFFFF # expected result
    kmabb s9, s6, s7
    bne s9, s8, print_error

    # kmabb
    li s6, 0xFFFF7FFF # rs1
    li s7, 0xFFFF8000 # rs2
    li s9, 0x80000000 # rd
    li s8, 0x80000000 # expected result
    kmabb s9, s6, s7
    bne s9, s8, print_error

    # kmabt
    li s6, 0xFFFF7FFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0x7FFFFFFF # expected result
    kmabt s9, s6, s7
    bne s9, s8, print_error

    # kmatt
    li s6, 0x7FFFFFFF # rs1
    li s7, 0x7FFFFFFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0x7FFFFFFF # expected result
    kmatt s9, s6, s7
    bne s9, s8, print_error

    # kmada
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0x7FFFFFFF # expected result
    kmada s9, s6, s7
    bne s9, s8, print_error

    # kmaxda
    li s6, 0x7FFF7FFF # rs1
    li s7, 0x7FFF7FFF # rs2
    li s9, 0x7FFFFFFF # rd
    li s8, 0x7FFFFFFF # expected result
    kmaxda s9, s6, s7
    bne s9, s8, print_error

    li s8, 0xFFFFFFFF # rs1
    li s9, 0x7FFFFFFF # rs1 + 1
    li s7, 0x7FFF7FFF # rs2
    li s4, 0x3FFF0000 # expected r10
    li s5, 0x80000000 # expected r11
    smal s10, s8, s7
    bne s10, s4, print_error
    bne s11, s5, print_error

    # add64
    li s6, 0x10000001
    li s7, 0x10000001
    li s8, 0x10000001
    li s9, 0x10000001
    li s3, 0x20000002
    li s4, 0x20000002
    add64 s10, s6, s8
    bne s6, s8, print_error
    bne s7, s9, print_error

    # radd64
    li s6, 0x10000001
    li s7, 0x10000001
    li s8, 0x10000001
    li s9, 0x10000001
    li s3, 0x10000001
    li s4, 0x10000001
    radd64 s10, s6, s8
    bne s3, s10, print_error
    bne s4, s11, print_error

    # sub64
    li s6, 0x00000000
    li s7, 0x00000000
    li s8, 0x00000001
    li s9, 0x00000000
    li s3, 0xffffffff
    li s4, 0xffffffff
    sub64 s10, s6, s8
    bne s3, s10, print_error
    bne s4, s11, print_error

    # smar64
    li s6, 0x00000002
    li s7, 0x00000002
    li s8, 0x11111111
    li s9, 0x11111111
    li s10, 0x11111115
    li s11, 0x11111111
    smar64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # smsr64
    li s6, 0x00000002
    li s7, 0x00000002
    li s8, 0x11111111
    li s9, 0x11111111
    li s10, 0x1111110d
    li s11, 0x11111111
    smsr64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # kmar64
    li s6, 0x00000005
    li s7, 0x00000001
    li s8, 0xFFFFFFFF
    li s9, 0x7FFFFFFF
    li s10, 0xFFFFFFFF
    li s11, 0x7FFFFFFF
    kmar64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # kmsr64
    li s6, 0x00000005
    li s7, 0x00000001
    li s8, 0x00000000
    li s9, 0x80000000
    li s10, 0x00000000
    li s11, 0x80000000
    kmsr64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # ukmar64
    li s6, 0x00000005
    li s7, 0x00000001
    li s8, 0xFFFFFFFF
    li s9, 0xFFFFFFFF
    li s10, 0xFFFFFFFF
    li s11, 0xFFFFFFFF
    ukmar64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # ukmsr64
    li s6, 0x00000005
    li s7, 0x00000001
    li s8, 0x00000000
    li s9, 0x00000000
    li s10, 0xFFFFFFFF
    li s11, 0xFFFFFFFF
    ukmsr64 s8, s6, s7;
    bne s8, s10, print_error
    bne s9, s11, print_error

    # smalbb
    li s6, 0x00020002
    li s7, 0x00010004
    li s8, 0x00000000
    li s9, 0xF0000000
    li s3, 0x00000008
    li s4, 0xF0000000
    smalbb s8, s6, s7;
    bne s3, s8, print_error
    bne s4, s9, print_error

    # smalbt
    li s6, 0x00020002
    li s7, 0x00010004
    li s8, 0x00000000
    li s9, 0xF0000000
    li s3, 0x00000002
    li s4, 0xF0000000
    smalbt s8, s6, s7;
    bne s3, s8, print_error
    bne s4, s9, print_error

    # smaltt
    li s6, 0x00020002
    li s7, 0x00020004
    li s8, 0x00000000
    li s9, 0xF0000000
    li s3, 0x00000004
    li s4, 0xF0000000
    smaltt s8, s6, s7;
    bne s3, s8, print_error
    bne s4, s9, print_error

    # kaddh
    li s6, 0xFFFF8000
    li s7, 0xFFFF8000
    li s8, 0xFFFF8000
    kaddh s9, s6, s7
    bne s9, s8, print_error

    # ksubh
    li s6, 0xFFFF8000
    li s7, 0x00007fff
    li s8, 0xFFFF8000
    ksubh s9, s6, s7
    bne s9, s8, print_error

    # khmbb
    li s6, 0x00007FFF
    li s7, 0x00007FFF
    li s8, 0x00007FFE
    khmbb s9, s6, s7
    bne s9, s8, print_error

    # khmbb
    li s6, 0x00008000
    li s7, 0x00008000
    li s8, 0x00007FFF
    khmbb s9, s6, s7
    bne s9, s8, print_error

    # khmbt
    li s6, 0x00007FFF
    li s7, 0x7FFF0000
    li s8, 0x00007FFE
    khmbt s9, s6, s7
    bne s9, s8, print_error

    # khmtt
    li s6, 0x7FFF0000
    li s7, 0x7FFF0000
    li s8, 0x00007FFE
    khmtt s9, s6, s7
    bne s9, s8, print_error

    # ukaddh
    li s6, 0xFFFFFFFF
    li s7, 0xFFFFFFFF
    li s8, 0xFFFFFFFF
    ukaddh s9, s6, s7
    bne s9, s8, print_error

    # uksubh
    li s6, 0xFFFF0000
    li s7, 0x00000001
    li s8, 0xFFFFFFFF
    uksubh s9, s6, s7
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
