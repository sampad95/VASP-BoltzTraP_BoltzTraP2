#!/bin/sh
echo "Enter the temperature"
read temp
echo "Enter the trace file"
read trace_file
awk '{if($2 == '$temp') print $0}' $trace_file > "${temp%%.*}".dat
