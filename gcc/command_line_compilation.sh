#!/bin/bash

gcc -c foo.c
ar crs libfoo.a foo.o
gcc -shared -o libbar.so -fPIC bar.c
gcc -L. main.c -o my_app -lbar -lfoo

export LD_LIBRARY_PATH=$PWD
./my_app

