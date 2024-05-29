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
    li s8, 0x00008001 # rs1
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
    li s8, 0x000FFFF0 # rs1
    sclip8 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip8
    li s6, 0x000FFFF0 # rs1
    li s8, 0x000F0000 # rs1
    uclip8 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs8
    li s6, 0x00007FFF # rs1
    li s8, 0x00008101 # rs1
    kabs8 s9, s6
    bne s9, s8, print_error

    # clrs8
    li s6, 0x000F7FFF # rs1
    li s8, 0x07030007 # rs1
    clrs8 s9, s6
    bne s9, s8, print_error

    # clz8
    li s6, 0x000F7FFF # rs1
    li s8, 0x08040100 # rs1
    clz8 s9, s6
    bne s9, s8, print_error

    # sunpkd810
    li s6, 0x7766F5F4 # rs1
    li s8, 0xFFF5FFF4 # rs1
    sunpkd810 s9, s6
    bne s9, s8, print_error

    # sunpkd820
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0066FFF4 # rs1
    sunpkd820 s9, s6
    bne s9, s8, print_error

    # sunpkd830
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0077FFF4 # rs1
    sunpkd830 s9, s6
    bne s9, s8, print_error

    # sunpkd831
    li s6, 0x7766F5F4 # rs1
    li s8, 0x0077FFF5 # rs1
    sunpkd831 s9, s6
    bne s9, s8, print_error

    # sunpkd832
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00770066 # rs1
    sunpkd832 s9, s6
    bne s9, s8, print_error

    # zunpkd810
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00F500F4 # rs1
    zunpkd810 s9, s6
    bne s9, s8, print_error

    # zunpkd820
    li s6, 0x7766F5F4 # rs1
    li s8, 0x006600F4 # rs1
    zunpkd820 s9, s6
    bne s9, s8, print_error

    # zunpkd830
    li s6, 0x7766F5F4 # rs1
    li s8, 0x007700F4 # rs1
    zunpkd830 s9, s6
    bne s9, s8, print_error

    # zunpkd831
    li s6, 0x7766F5F4 # rs1
    li s8, 0x007700F5 # rs1
    zunpkd831 s9, s6
    bne s9, s8, print_error

    # zunpkd832
    li s6, 0x7766F5F4 # rs1
    li s8, 0x00770066 # rs1
    zunpkd832 s9, s6
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
