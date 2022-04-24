#!/bin/sh
echo "Enter the temperature"
read temp
echo "Enter the trace file"
read trace_file
awk '{if($2 == '$temp') print $0}' $trace_file > "${temp%%.*}".dat
awk '{print $1 = $3, $2 = (($5*$5*$6*$2)/$8)}' "${temp%%.*}".dat >  "${temp%%.*}"_NvsZT.dat
