#!/bin/bash -x
echo "welcome Gambler"
read -p "Number of days to play:" numOfdays
read -p "Number of games every day:" numOfgames

for (( i=1 ; i<=$numOfdays ; i++ ))
do
    stack=$(( $stack+100 ))
    for (( j=1; j <=$numOfgames ; j++ ))
    do
         while (( $stack > 0 ))
         do
            bets=$(( RANDOM %2 ))
            if [ $bets -eq 1 ]
            then
       		stack=$(( $satck+1 ))
                echo "win"
       	     else
      		stack=$(( $stack-1 ))
                echo "loose"
     	     fi
         done  
    done
done
echo $stack


