#!/bin/bash -x
echo "welcome Gambler"
read -p "Number of days to play:" numOfdays
read -p "Number of games every day:" numOfgames
bet=0
stack=0
for (( i=1 ; i<=$numOfdays ; i++ ))
do
    stack=$(( $stack+100 ))
    for (( j=1; j <=$numOfgames ; j++ ))
    do
       (( bet++ ))
       if [ $stack -eq 0 ]
       then
       		break
     	else
      		(( stack-- ))
     	fi
    done
    	
done
echo $stack
echo $bet
