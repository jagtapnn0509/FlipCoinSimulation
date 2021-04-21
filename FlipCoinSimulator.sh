#!/bin/bash
echo "Welcome To the Flip Coins Simulation Program"

Head=0
Tail=1
HC=0
TC=0
diff=0
Flip_Coin ()
{
 	FlipCoin=$((RANDOM%2))
        if (( $FlipCoin == $Head ))
        then
                HC=$((HC+1))
        else
                TC=$((TC+1))
        fi

}

Check_Diff ()
{
	if (( $HC > $TC ))
	then
		diff=$((HC - TC))
	else
		diff=$((TC - HC))
	fi
}

print()
{
	Check_Diff
	echo "difference between Head and Tail is $diff"
        echo "Total Tail Wins $TC"
        echo "Total Head Wins $HC"
}

while (( $HC < 21 && $TC < 21 ))
do
        Flip_Coin
done


if (( $HC > $TC ))
then
	echo "Head Winner"
	print
elif (( $HC < $TC ))
then
	echo "Tail Winner"
	print
else
	echo "Game Is Tie"
	print
	while (($diff<2))
	do
		Flip_Coin
		Check_Diff
	done
	echo "if while done"
	if [ $HC > $TC ]
	then
	        echo "Head Winner "
	        print
	elif [ $HC < $TC ]
	then
        	echo "Tail Winner "
        	print
	fi

fi
