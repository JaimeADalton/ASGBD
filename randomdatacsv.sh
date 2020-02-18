#!/bin/bash
aCadenaUnica=($(shuf -i 1-1000000 -n 1000000))
aCadenaIndex=($(shuf -i 1-1000000 -n 1000000))

function table_1 {
	for ((j=1;j<=1000000;j++));do
		echo "${aCadenaUnica[$j]};${aCadenaIndex[$j]};${aCadenaIndex[$j]};$(($j % 100 + 1))"
	done > tablas.csv
}

table_1
