#!/bin/bash
echo enter file name:
read fname
verilator -Wall --sc -trace $fname.v --exe sc_main.cpp
export SYSTEMC_LIBDIR=/usr/local/systemc-2.3/lib-linux64/
export LD_LIBRARY_PATH=$SYSTEMC_LIBDIR:$LD_LIBRARY_PATH
export SYSTEMC_CXX_FLAGS=-pthread
make -j -C obj_dir -f V$fname.mk V$fname
obj_dir/V$fname
