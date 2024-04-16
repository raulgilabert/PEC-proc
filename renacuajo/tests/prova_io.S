    movi r1, 0      ; r1 = 0
    movi r2, 15     ; per engengar tots els 7seg
    out 9, r2       
a:  out 5, r1       ; leds verds = r1
    out 6, r1       ; leds vermells = r1
    out 10, r1      ; a la 7seg
    addi r1, r1, 1  ; r1 + 1
    bnz r1, a
    halt