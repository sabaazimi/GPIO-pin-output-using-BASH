#!/bin/bash

ON="1"
OFF="0"

for j in {0..4}
do
	for i in {0..3}
	do
		
		gpio write $i $ON
	
	done

	sleep 1s

	for i in {0..3}
	do
		
		gpio write $i $OFF
	done
	sleep 1s
done
