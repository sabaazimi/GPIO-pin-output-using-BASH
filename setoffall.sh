#!/bin/bash
setoffAll()
{
	for i in {0..3}
	do
		gpio write $i 0
	done
	}

setoffAll
