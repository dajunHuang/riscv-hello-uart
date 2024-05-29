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

    # sra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf0000fff00000222 # expected result
    sra16 s9, s6, s7
    bne s9, s8, print_error

    # srai16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf0000fff00000222 # expected result
    srai16 s9, s6, 3
    bne s9, s8, print_error

    # sra16.u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf000100000000222 # expected result
    sra16.u s9, s6, s7
    bne s9, s8, print_error

    # srai16.u
    li s6, 0x80007fff00001111 # rs1
    li s8, 0xf000100000000222 # expected result
    srai16.u s9, s6, 3
    bne s9, s8, print_error

    # srl16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x10000fff00000222 # expected result
    srl16 s9, s6, s7
    bne s9, s8, print_error

    # srli16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x10000fff00000222 # expected result
    srli16 s9, s6, 3
    bne s9, s8, print_error

    # srl16.u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x1000100000000222 # expected result
    srl16.u s9, s6, s7
    bne s9, s8, print_error

    # srli16.u
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x1000100000000222 # expected result
    srli16.u s9, s6, 3
    bne s9, s8, print_error

    # sll16
    li s6, 0xe0007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x0000fff800008888 # expected result
    sll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0xe0007fff00001111 # rs1
    li s8, 0x0000fff800008888 # expected result
    slli16 s9, s6, 3
    bne s9, s8, print_error

    # ksll16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0x80007fff00007fff # expected result
    ksll16 s9, s6, s7
    bne s9, s8, print_error

    # slli16
    li s6, 0x80007fff00001111 # rs1
    li s8, 0x80007fff00007fff # expected result
    kslli16 s9, s6, 3
    bne s9, s8, print_error

    # kslra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFe3 # rs2
    li s8, 0x80007fff00007fff # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xf0000fff00000222 # expected result
    kslra16 s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFe3 # rs2
    li s8, 0x80007fff00007fff # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # kslra16_u
    li s6, 0x80007fff00001111 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xf000100000000222 # expected result
    kslra16.u s9, s6, s7
    bne s9, s8, print_error

    # sra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xfff10e0806040200 # expected result
    sra8 s9, s6, s7
    bne s9, s8, print_error

    # srai8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xfff10e0806040200 # expected result
    srai8 s9, s6, 3
    bne s9, s8, print_error

    # sra8.u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x00f10f0906040200 # expected result
    sra8.u s9, s6, s7
    bne s9, s8, print_error

    # srai8.u
    li s6, 0xff88774433221100 # rs1
    li s8, 0x00f10f0906040200 # expected result
    srai8.u s9, s6, 3
    bne s9, s8, print_error

    # srl8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x1f110e0806040200 # expected result
    srl8 s9, s6, s7
    bne s9, s8, print_error

    # srli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0x1f110e0806040200 # expected result
    srli8 s9, s6, 3
    bne s9, s8, print_error

    # srl8.u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0x20110f0906040200 # expected result
    srl8.u s9, s6, s7
    bne s9, s8, print_error

    # srli8.u
    li s6, 0xff88774433221100 # rs1
    li s8, 0x20110f0906040200 # expected result
    srli8.u s9, s6, 3
    bne s9, s8, print_error

    # sll8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xf840B82098108800 # expected result
    sll8 s9, s6, s7
    bne s9, s8, print_error

    # slli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf840B82098108800 # expected result
    slli8 s9, s6, 3
    bne s9, s8, print_error

    # ksll8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFB # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    ksll8 s9, s6, s7
    bne s9, s8, print_error

    # kslli8
    li s6, 0xff88774433221100 # rs1
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslli8 s9, s6, 3
    bne s9, s8, print_error

    # kslra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0xfff10e0806040200 # expected result
    kslra8 s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFF3 # rs2
    li s8, 0xf8807f7f7f7f7f00 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # kslra8_u
    li s6, 0xff88774433221100 # rs1
    li s7, 0xFFFFFFFFFFFFFFFD # rs2
    li s8, 0x00f10f0906040200 # expected result
    kslra8.u s9, s6, s7
    bne s9, s8, print_error

    # cmpeq16
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFF0000FFFF0000 # expected result
    cmpeq16 s9, s6, s7
    bne s9, s8, print_error

    # scmplt16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # scmple16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFFFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFF0000FFFF # expected result
    scmplt16 s9, s6, s7
    bne s9, s8, print_error

    # ucmple16
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x0000FFFFFFFFFFFF # expected result
    scmple16 s9, s6, s7
    bne s9, s8, print_error

    # cmpeq8
    li s6, 0x8888FFFF12340000 # rs1
    li s7, 0x8888FFFe12341000 # rs2
    li s8, 0xFFFFFF00FFFF00FF # expected result
    cmpeq8 s9, s6, s7
    bne s9, s8, print_error

    # scmplt8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # scmple8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0xFF00FFFFFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # ucmplt8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x000000FF000000FF # expected result
    scmplt8 s9, s6, s7
    bne s9, s8, print_error

    # ucmple8
    li s6, 0xFFFFFFFE12340000 # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0xFF00FFFFFFFFFFFF # expected result
    scmple8 s9, s6, s7
    bne s9, s8, print_error

    # smul16
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x014b5a90FFFFFFFF # expected result
    smul16 s10, s6, s7
    bne s10, s8, print_error

    # smulx16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF00011234 # rs2
    li s8, 0x014b5a90FFFFFFFF # expected result
    smulx16 s10, s6, s7
    bne s10, s8, print_error

    # umul16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF12340001 # rs2
    li s10, 0x014b5a900000FFFF # expected result
    umul16 s8, s6, s7
    bne s10, s8, print_error

    # umulx16
    li s6, 0xFFFFFFFF1234FFFF # rs1
    li s7, 0xFFFFFFFF00011234 # rs2
    li s10, 0x014b5a900000FFFF # expected result
    umulx16 s8, s6, s7
    bne s10, s8, print_error

    # khm16
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0x8000FFFF8000FFFF # rs2
    li s10, 0x8001ffff8001ffff # expected result
    khm16 s8, s6, s7
    bne s10, s8, print_error

    # khmx16
    li s6, 0x7FFF00017FFF0001 # rs1
    li s7, 0xFFFF8000FFFF8000 # rs2
    li s10, 0x8001ffff8001ffff # expected result
    khmx16 s8, s6, s7
    bne s10, s8, print_error

    # smul8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x01440a900000FFFF # expected result
    smul8 s10, s6, s7
    bne s10, s8, print_error

    # smulx8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF34120100 # rs2
    li s8, 0x01440a900000FFFF # expected result
    smulx8 s10, s6, s7
    bne s10, s8, print_error

    # umul8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF12340001 # rs2
    li s8, 0x01440a90000000FF # expected result
    umul8 s10, s6, s7
    bne s10, s8, print_error

    # umulx8
    li s6, 0xFFFFFFFE1234FFFF # rs1
    li s7, 0xFFFEFFFF34120100 # rs2
    li s8, 0x01440a90000000FF # expected result
    umulx8 s10, s6, s7
    bne s10, s8, print_error

    # khm8
    li s6, 0x807F0001807F0001 # rs1
    li s7, 0x8080FFFF8080FFFF # rs2
    li s10, 0x7F8100ff7F8100ff # expected result
    khm8 s8, s6, s7
    bne s10, s8, print_error

    # smin16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    smin16 s8, s6, s7
    bne s10, s8, print_error

    # umin16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    umin16 s8, s6, s7
    bne s10, s8, print_error

    # smax16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x7FFF7FFF80000000 # expected result
    smax16 s8, s6, s7
    bne s10, s8, print_error

    # umax16
    li s6,  0x7FFF800080000000 # rs1
    li s7,  0x80007FFF80000000 # rs2
    li s10, 0x8000800080000000 # expected result
    umax16 s8, s6, s7
    bne s10, s8, print_error

    # sclip16
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF0000FFFF0 # rs1
    sclip16 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip16
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F0000000F0000 # rs1
    uclip16 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs16
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x0000800100017FFF # rs1
    kabs16 s9, s6
    bne s9, s8, print_error

    # clrs16
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x000B0000000F0000 # rs1
    clrs16 s9, s6
    bne s9, s8, print_error

    # clz16
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x000C000100000000 # rs1
    clz16 s9, s6
    bne s9, s8, print_error

    # smin8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000001 # expected result
    smin8 s8, s6, s7
    bne s10, s8, print_error

    # umin8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000001 # expected result
    umin8 s8, s6, s7
    bne s10, s8, print_error

    # smax8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x7F007F0080000002 # expected result
    smax8 s8, s6, s7
    bne s10, s8, print_error

    # umax8
    li s6,  0x7FFF800080000001 # rs1
    li s7,  0x80007FFF80000002 # rs2
    li s10, 0x80FF80FF80000002 # expected result
    umax8 s8, s6, s7
    bne s10, s8, print_error

    # sclip8
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000FFFF00FFFF000 # rs1
    sclip8 s9, s6, 4         # -16 - 15
    bne s9, s8, print_error

    # uclip8
    li s6, 0x000FFFF07FFF8000 # rs1
    li s8, 0x000F00000F000000 # rs1
    uclip8 s9, s6, 4         # 0 - 15
    bne s9, s8, print_error

    # kabs8
    li s6, 0x00007FFFFFFF8000 # rs1
    li s8, 0x0000810101017F00 # rs1
    kabs8 s9, s6
    bne s9, s8, print_error

    # clrs8
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x0703000707070007 # rs1
    clrs8 s9, s6
    bne s9, s8, print_error

    # clz8
    li s6, 0x000F7FFFFFFF8000 # rs1
    li s8, 0x0804010000000008 # rs1
    clz8 s9, s6
    bne s9, s8, print_error

    # sunpkd810
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0xFFF5FFF4FFF10000 # rs1
    sunpkd810 s9, s6
    bne s9, s8, print_error

    # sunpkd820
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0066FFF4FFF20000 # rs1
    sunpkd820 s9, s6
    bne s9, s8, print_error

    # sunpkd830
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0077FFF400330000 # rs1
    sunpkd830 s9, s6
    bne s9, s8, print_error

    # sunpkd831
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x0077FFF50033FFF1 # rs1
    sunpkd831 s9, s6
    bne s9, s8, print_error

    # sunpkd832
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700660033FFF2 # rs1
    sunpkd832 s9, s6
    bne s9, s8, print_error

    # zunpkd810
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x00F500F400F10000 # rs1
    zunpkd810 s9, s6
    bne s9, s8, print_error

    # zunpkd820
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x006600F400F20000 # rs1
    zunpkd820 s9, s6
    bne s9, s8, print_error

    # zunpkd830
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700F400330000 # rs1
    zunpkd830 s9, s6
    bne s9, s8, print_error

    # zunpkd831
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x007700F5003300F1 # rs1
    zunpkd831 s9, s6
    bne s9, s8, print_error

    # zunpkd832
    li s6, 0x7766F5F433F2F100 # rs1
    li s8, 0x00770066003300F2 # rs1
    zunpkd832 s9, s6
    bne s9, s8, print_error  

    # pkbb16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs1
    li s8, 0x3333777711115555 # rs1
    pkbb16 s9, s6, s7
    bne s9, s8, print_error

    # pkbt16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs1
    li s8, 0x3333888811116666 # rs1
    pkbt16 s9, s6, s7
    bne s9, s8, print_error

    # pktb16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs1
    li s8, 0x4444777722225555 # rs1
    pktb16 s9, s6, s7
    bne s9, s8, print_error

    # pktt16
    li s6, 0x4444333322221111 # rs1
    li s7, 0x8888777766665555 # rs1
    li s8, 0x4444888822226666 # rs1
    pktt16 s9, s6, s7
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
