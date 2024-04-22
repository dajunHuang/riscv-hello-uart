.global _start

_start:
    # add16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0xfe46000aff120006 # expected result
    add16 s9, s6, s7
    bne s9, s8, print_error

    # uradd16
    li s6, 0x7F120003FF780001 # rs1
    li s7, 0x7F340007FF9a0005 # rs2
    li s8, 0x7f2300057f890003# expected result
    uradd16 s9, s6, s7
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
