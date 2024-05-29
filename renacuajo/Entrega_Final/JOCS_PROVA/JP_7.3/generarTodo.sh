#!/bin/bash


echo "Ensamblando ..."
#compila el ensamblador
sisa-as supertest_sys.s -o supertest_sys.o
sisa-as supertest_user.s    -o supertest_user.o

echo "Compilando ..."
#compila el c (solo compila)  (para ver el codigo fuente entre el codigo desensamblado hay que compilar con la opcion -O0)
#sisa-gcc -gstabs -c -Wall -Wextra -O2 engine.c -o engine.o -DVERSION=\""1.7"\"
      
echo "Linkando ..."
#Linkamos los ficheros (la opcion -s es para que genere menos comentarios)
sisa-ld -s -T system.lds supertest_sys.o supertest_user.o -o supertest.o

#desensamblamos el codigo
sisa-objdump -d -z --section=.sistema supertest.o >supertest-sys.code
sisa-objdump -s -z --section=.sysdata supertest.o >supertest-sys.data
sisa-objdump -d -z --section=.user    supertest.o >supertest-user.code
sisa-objdump -s -z --section=.userdata supertest.o >supertest-user.data

./limpiar.pl codigo supertest-sys.code
./limpiar.pl datos supertest-sys.data
./limpiar.pl codigo supertest-user.code
./limpiar.pl datos supertest-user.data

#Linkamos los ficheros (sin la opcion -s es para que genere mas comentarios) y desensamblamos
#(para ver el codigo fuente entre el codigo desensamblado hay que haber compilado con la opcion -O0)
sisa-ld -T system.lds supertest_sys.o supertest_user.o -o temp_sistema.o

sisa-objdump -S -x -w --section=.sistema temp_sistema.o >  supertest.dis
sisa-objdump -S -x -w --section=.sysdata temp_sistema.o >> supertest.dis
sisa-objdump -S -x -w --section=.user temp_sistema.o >>  supertest.dis
sisa-objdump -S -x -w --section=.userdata temp_sistema.o >> supertest.dis