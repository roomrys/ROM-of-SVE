#! /bin/bash
#
octave shallow_water_1d_test.m > shallow_water_1d_test.txt
if [ $? -ne 0 ]; then
  echo "Run error."
  exit
fi
#
echo "Normal end of execution."
