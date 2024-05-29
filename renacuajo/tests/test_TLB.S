.include "macros.s"

.set PILA_USUARI, 0x1000

.global main
.global PILA_USUARI

.text

main: 
                ; Aquesta instruccio fara miss del TLB de instruccions
    movi r1, 2  ; perque la pagina no esta inicialitzada
    movi r2, 1
    st 0(r1), r2 ; fem un acces valid

    movi r1, 0
    movhi r1, 0xB0
    st 0(r1), r2 ; Intentem acces en zona protegida

    movi r1, 0
    movhi r1, 0xB0
    ld r2, 0(r1) ; el mateix pero amb un load

    ; intentem escriure en una zona de readonly
    movi r1, 20
    movhi r1, 20
    st 0(r1), r2

    ; per fer un flush hem de fer una crida a sistema 
    ; en concret la 1
    movi r2, 8
    flush r2
    st 0(r1), r2 ; fallada perque la pagina es invalida

    move r1, 0
    movhi r1, 0xC0
    jmp r1 ; intentem saltar a una adreça de sistema en el fetch saltara interrupcio

    halt ; despres de tractar la interrupcio ens enviara aqui

