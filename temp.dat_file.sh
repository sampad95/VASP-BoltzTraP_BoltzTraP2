#!/bin/sh
echo "Enter the temperature"
read temp
echo "Enter the trace file"
read trace_file
grep $temp $trace_file > "${temp%%.*}".dat
