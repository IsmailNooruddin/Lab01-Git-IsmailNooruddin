.text
.globl main
main:

    # storing value in regitsers
    li x10, 0x78786464
    li x11, 0xA8A81919

    # storing address in register
    li x5, 0x100
    li x6, 0x1F0
    
    sw x10, 0(x5)   # part a
    sw x11, 0(x6)   # part b
    lhu x12, 0(x5)  # part c
    lh x13, 0(x6)   # part d
    lb x14, 0(x6)   # part e
end:
    j end