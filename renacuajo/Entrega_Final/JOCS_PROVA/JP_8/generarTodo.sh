#!/bin/bash


echo "Ensamblando ..."
#compila el ensamblador
sisa-as entrada.s -o entrada.o
sisa-as test_TLB.s    -o test_TLB.o

echo "Compilando ..."
#compila el c (solo compila)  (para ver el codigo fuente entre el codigo desensamblado hay que compilar con la opcion -O0)
#sisa-gcc -gstabs -c -Wall -Wextra -O2 engine.c -o engine.o -DVERSION=\""1.7"\"
      
echo "Linkando ..."
#Linkamos los ficheros (la opcion -s es para que genere menos comentarios)
sisa-ld -s -T system.lds entrada.o test_TLB.o -o test_tlb_full.o

#desensamblamos el codigo
sisa-objdump -d -z --section=.sistema test_tlb_full.o >sys.code
sisa-objdump -s -z --section=.sysdata test_tlb_full.o >sys.data
sisa-objdump -d -z --section=.user    test_tlb_full.o >user.code
sisa-objdump -s -z --section=.userdata test_tlb_full.o >user.data

./limpiar.pl codigo sys.code
./limpiar.pl datos sys.data
./limpiar.pl codigo user.code
./limpiar.pl datos user.data

#Linkamos los ficheros (sin la opcion -s es para que genere mas comentarios) y desensamblamos
#(para ver el codigo fuente entre el codigo desensamblado hay que haber compilado con la opcion -O0)
sisa-ld -T system.lds entrada.o test_TLB.o -o temp_sistema.o

sisa-objdump -S -x -w --section=.sistema temp_sistema.o >  test_TLB.dis
sisa-objdump -S -x -w --section=.sysdata temp_sistema.o >> test_TLB.dis
sisa-objdump -S -x -w --section=.user temp_sistema.o >>  test_TLB.dis
sisa-objdump -S -x -w --section=.userdata temp_sistema.o >> test_TLB.dis