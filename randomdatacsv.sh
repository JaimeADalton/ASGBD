#!/bin/bash

#table 1
# hid (PK), hcUnique 32, hcIndex 42, hcSinIndex 42, hcFK 8

#table 2
# PID autoincrement (PK) pcUnique 8, pcIndex 42, pcSinIndex 42
aCadenaUnica=($(shuf -i 1-1000000 -n 1000000))
aCadenaIndex=($(shuf -i 1-1000000 -n 1000000))

function table_1 {
	for ((j=1;j<=1000000;j++));do
		echo "$j;${aCadenaUnica[$j]};${aCadenaIndex[$j]};${aCadenaIndex[$j]};$(($j % 100 + 1))"
	done > tablas.csv
}

table_1
