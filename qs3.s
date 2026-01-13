.text
.globl main

main:
    li x20, 5   # a = 5
    add x21, x0, x0   # b = 0 + 0
    addi x20, x21, 32    # a = b + 32
    li x5, 5    # temp = 5
    add x22, x20, x21    # d = a + b
    sub x22, x22, x5    # d = (a + b) - 5
    sub x5, x20, x22    # (a - d)
    sub x6, x21, x20    # (b - a)
    add x7, x5, x6  # (a - d) + (b - a)
    add x23, x7, x22    # e = (((a - d) + (b - a)) + d)
    add x5, x20, x21    # (a + b)
    add x6, x22, x23    # (d + e)
    add x23, x5, x6     # e = a + b + d + e

end:
    j end
