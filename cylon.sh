#!/bin/bash

a=1
i=0

while [ 1 ]
do
	for i in {0..2}
	do
		gpio write $i 1
		sleep 0.25s
		gpio write $i 0
		#~ if [ $i -gt 3]
		#~ then 
			
		
	done
	for i in {3..1}
	do
		gpio write $i 1
		sleep 0.25s
		gpio write $i 0
		
	done
	
done
