#!/bin/bash
echo "Welcome To the Flip Coins Simulation Program"

Head=0
Tail=1
HC=0
TC=0
for (( i=0; i<10; i++ ))
do

	FlipCoin=$((RANDOM%2))
	if (( $FlipCoin == $Head ))
	then
		HC=$((HC+1))

	else
		TC=$((TC+1))

	fi
done
echo "Head  Won $HC  Times"
echo "Tail  Won $TC  Times"
