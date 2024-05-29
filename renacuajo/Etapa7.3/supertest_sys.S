.include "macros.s"

.set PILA_SYS, 0x9000

.data
    code_call:  .word 0 ; codi de la crida
    flag_inst:  .word 0 ; senyal d'excepcio de instruccio protegida
    flag_data:  .word 0 ; senyal d'excepcil de dades
    flag_inte:  .word 0 ; senyal d'interrupcio

    .balign 2

    interrupts_vector:
        .word RSI_default ; timer
        .word RSI_default ; keys
        .word RSI_default ; switches
        .word RSI_default ; teclat
    
    exceptions_vector:
        .word RSE_default ; inst illegal
        .word RSE_default ; mem no alineada
        .word RSE_resume  ; overflow FPU
        .word RSE_resume  ; div entre 0 FPU
        .word RSE_default ; div entre 0 escalar
        .word RSE_default ; ---
        .word RSE_TLB     ; miss TLB inst
        .word RSE_TLB     ; miss TLB dades
        .word RSE_TLB     ; pagina invalida TLB inst
        .word RSE_TLB     ; pagina invalida TLB dades
        .word RSE_TLB     ; pagina protegida TLB inst
        .word RSE_mem     ; pagina protegida TLB dades
        .word RSE_default ; pagina nomes lectura
        .word RSE_inst    ; instruccio protegida
        
    syscall_vector:
        .word syscall
        .word syscall
        .word syscall
        .word syscall
        .word syscall
        .word syscall
        .word syscall
        .word syscall

.text

    di ; desactivar interrupts al iniciar

    $movei r7, PILA_SYS
    wrs s6, r7 ; pila de sistema a registre que no s'utilitza

    $movei r6, RSG
    wrs s5, r6 ; RSG

    $movei r5, exit ; sortida de la rutina principal

    $movei r6, main ; rutina main de user
    wrs s1, r6

    movi r6, 0x02 ; paraula d'estat a restaurar nomes importen els 3 bits de menor pes i per tant no fem movhi
    wrs s0, r6

    $movei r7, PILA_USR ; pila d'usuari a r7

    reti ; tornem a mode usuari com si aixo fos una crida a sistema

RSI_default:
    $movei r2, flag_inte
    movi r1, 1
    st 0(r2), r1 ; totes les interrupcions en aquest test les tractem com si fossin la mateixai nomes possem 1 per marcar que hi ha hagut una a memoria
    jmp r6

RSE_resume:
    jmp r6

RSE_default:
    halt

RSE_TLB:
    halt

RSE_mem:
    $movei r1, flag_data
    movi r1, 1
    st 0(r1), r2 ; lo mateix que a RSI_default
    jmp r6

RSE_inst:
    $movei r1, flag_inst
    movi r1, 1
    st 0(r1), r2 ; lo mateix que a RSI_default
    jmp r6

syscall:
    $movei r1, code_call
    st 0(r1), r4 ; codi de la crida
    jmp r6

exit:
    halt ; parar la CPU perque ha acabat tot

RSG:
    rds r7, s6
    ; guardem nomes els registres que utilitzarem
    st (r7), r1
    addi r7, r7, -2
    st (r7), r2
    addi r7, r7, -2
    st (r7), r3
    addi r7, r7, -2
    st (r7), r6 
    addi r7, r7, -2
    
    ; dividim el tipu d'entrada a sistema
    rds r1, s2
    movi r2, 14
    cmpeq r3, r2, r1 ; syscall
    bnz r3, syscall_treat

    movi r2, 15
    cmpeq r3, r2, r1
    bnz r3, interrupt_treat

exception_treat:
    $movei r2, exceptions_vector
    add r1, r1, r1 ; num excepcio com a index -> *2
    add r2, r2, r1
    ld r2, 0(r2)
    jal r6, r2 ; es salta al tractament de l'excepcio
    $movei r1, end_RSG
    jmp r1

syscall_treat:
    rds r1, s3
    movi r2, 7
    and r1, r1, r2 ; necessitem 3 bits -> mascara amb valor 7
    add r1, r1, r1 ; r1 com a index -> *2
    $movei r2, syscall_vector
    add r2, r2, r1
    ld r2, 0(r2)
    jal r6, r2
    $movei r1, end_RSG
    jmp r1

interrupt_treat:
    getiid r1
    add r1, r1, r1 ; r1 con a index -> *2
    $movei r2, interrupts_vector
    add r2, r2, r1
    ld r2, 0(r2)
    jal r6, r2

end_RSG:
    ld r6, 0(r7)
    addi r7, r7, 2
    ld r3, 0(r7)
    addi r7, r7, 2
    ld r2, 0(r7)
    addi r7, r7, 2
    ld r1, 0(r7)
    addi r7, r7, 2
    wrs s6, r7
    reti




   