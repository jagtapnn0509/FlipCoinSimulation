#!/bin/bash 
echo "Welcome To the Flip Coins Simulation Program"

Head=0
Tail=1
HC=0
TC=0
while (( $HC < 21 && $TC < 21 ))
do
	FlipCoin=$((RANDOM%2))
	if (( $FlipCoin == $Head ))
	then
		HC=$((HC+1))
	else
		TC=$((TC+1))
	fi
done
echo "HeadCount is : $HC"
echo "Tail Count is : $TC"

if (( $HC == 21 ))
then
	echo "Head Won The Game by : $(($HC - $TC))"
elif (( $TC == 21 ))
then
	echo "Tail Won The Game by : $(($TC - $HC))"
elif (( $HC == 21 && $TC == 21 ))
then
	echo "Game Is Tie"
fi
