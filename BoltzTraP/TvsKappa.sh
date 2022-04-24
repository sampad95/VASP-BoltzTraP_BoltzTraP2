#!/bin/sh
echo "Enter the trace file"
read trace_file
awk '{print $1 = $1, $2 = $7}' $trace_file > TvsKappa.dat
