.text
.globl main
main:
    li x5, 0x100    # store address of a(chars, 1 byte each)
    li x6, 0x200    # store address of b(shorts, 2 bytes each)
    li x7, 0x300    # store address of c(ints, 4 bytes each)

    # populating array a
    li x1, 0xA
    li x2, 0xB
    li x3, 0xC
    li x4, 0xD
    sb x1, 0(x5)
    sb x2, 1(x5)
    sb x3, 2(x5)
    sb x4, 3(x5)

    # populating array b
    li x1, 0x2
    li x2, 0x4
    li x3, 0x6
    li x4, 0x8
    sh x1, 0(x6)
    sh x2, 2(x6)
    sh x3, 4(x6)
    sh x4, 6(x6)

    # populating array c
    li x1, 0x14
    li x2, 0x28
    li x3, 0x3C
    li x4, 0x50
    sw x1, 0(x7)
    sw x2, 4(x7)
    sw x3, 8(x7)
    sw x4, 12(x7)

    lb x8, 0(x5)    # x8 = a[0]
    lh x9, 0(x6)    # x9 = b[0]
    add x10, x8, x9    # x10 = a[0] + b[0]
    sw x10, 0(x7)   # c[0] = x10

    lb x8, 1(x5)    # x8 = a[1]
    lh x9, 2(x6)    # x9 = b[1]
    add x10, x8, x9    # x10 = a[1] + b[1]
    sw x10, 4(x7)   # c[1] = x10

    lb x8, 2(x5)    # x8 = a[2]
    lh x9, 4(x6)    # x9 = b[2]
    add x10, x8, x9    # x10 = a[2] + b[2]
    sw x10, 8(x7)   # c[2] = x10

    lb x8, 3(x5)    # x8 = a[3]
    lh x9, 6(x6)    # x9 = b[3]
    add x10, x8, x9    # x10 = a[3] + b[3]
    sw x10, 12(x7)   # c[3] = x10

end:
    j end