#!/bin/bash

# Common path for all GPIO access
BASE_GPIO_PATH=/sys/class/gpio

# Assign names to GPIO pin numbers for each light
FIRST=17
SECOND=18
THIRD=19
FOURTH=20

gpioArray=($FIRST $SECOND $THIRD $FOURTH)
echo milestone1
echo ${gpioArray[*]}

# Utility function to export a pin if not already exported
exportPin()
{
  if [ ! -e $BASE_GPIO_PATH/gpio$1 ]; then
    echo "$1" > $BASE_GPIO_PATH/export
    echo ifloop
    echo $1
  fi
}


for i in ${gpioArray[@]};do
	echo ${i}
	exportPin ${i}
done

