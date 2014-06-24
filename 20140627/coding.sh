#!/bin/sh

pause() {
read x
}

set -e
set -v

cat boundaries-0.c
gcc -std=c99 -Wall boundaries-0.c -o boundaries-0
pause
cgcc -g -ggdb  -std=c99 -Wall boundaries-0.c -o boundaries-0 # check using sparse
pause

cat boundaries-1.c
pause
cgcc -g -ggdb  -std=c99 -Wall boundaries-1.c -o boundaries-1
pause
# Zugriff auf foo[10] nicht erkannt
pause
clear

cat indent-0.c
pause
cp indent-0.c indent-1.c
indent indent-1.c
cat indent-1.c
pause
