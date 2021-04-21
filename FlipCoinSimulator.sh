#!/bin/bash -x
echo "Welcome To the Flip Coins Simulation Program"

Head=0
Tail=1
FlipCoin=$((RANDOM%2))
if (( $FlipCoin == $Head ))
then
	echo "Win Head"
else
	echo "Win Tail"
fi
