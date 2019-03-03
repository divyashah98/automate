#!/bin/bash
echo enter file name:
read fname
verilator -Wall --cc -trace $fname.v --exe sim.cpp
make -j -C obj_dir -f V$fname.mk V$fname
obj_dir/V$fname
