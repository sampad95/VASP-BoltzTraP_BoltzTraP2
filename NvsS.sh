#!/bin/sh
echo "Enter the temperature"
read temp
echo "Enter the trace file"
read trace_file
grep $temp $trace_file > "${temp%%.*}".dat
#echo "Enter the name of the file"
#read file                # 'file' is T.dat, where T is the temperature
#awk '{print $1 = $3, $2 = ($5*$5*$6)}' $file >  "${file%%.*}"_NvsPF.dat 
awk '{print $1 = $3, $2 = $5}' "${temp%%.*}".dat >  "${temp%%.*}"_NvsS.dat
