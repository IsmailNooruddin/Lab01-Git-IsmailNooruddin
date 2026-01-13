.text
.globl main

main:
    #int a = 5;
    li x20, 5
    
    # int b = 0 + 0;
    add x21, x0, x0
    # a = b + 32;
    addi x23, x21, 32
    #int d = (a + b) - 5;
    add x24, x23, x21
    addi x25, x24, -5
 #int e = (((a - d) + (b - a)) + d);
    sub x26, x23, x25
    sub x27, x21, x23
    add x28, x26, x27
    add x28, x28, x25
    # e = a + b + d + e;
    add x29, x23, x21
    add x29, x29, x25
    add x28, x29, x28
    
end:
    j end