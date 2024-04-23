    movi r1, 0 
a:  st 0(r1), r1
    out 10, r1
    addi r1, r1, 1
    bnz r1, a
    halt