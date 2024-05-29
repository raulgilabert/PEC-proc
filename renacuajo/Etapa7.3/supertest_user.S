.set PILA_USR, 0x1000

.global main
.global PILA_USR

.text

main: ; entrada user
    ; posicio de memoria protegida
    movi r1, 0
    movhi r1, 0x80 ; la memoria de sistema va de 0x8000 a 0xFFFF
    ld r2, 0(r1)

    ; instruccio illegal
    halt

    ; crida a sistema
    movi r1, 0
    calls, r1

loop:
    ; fem un loop a la espera d'interrupcions
    cmpeq r1, r1, r1
    bnz r1, loop

    halt