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

# Assign names to states
ON="1"
OFF="0"

setLightState()
{
  echo $2 > $BASE_GPIO_PATH/gpio$1/value
}


for i in ${gpioArray[@]};do
	echo ${i}
	setLightState ${i} $ON
done

# Utility function to turn all lights off
allLightsOff()
{
  setLightState $FIRST $OFF
  setLightState $SECOND $OFF
  setLightState $THIRD $OFF
  
  
}
