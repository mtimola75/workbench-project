#!/usr/bin/env bash

play () {
	echo "Guess how many files are in the current directory?"
	read response
	
	local num_files=$(ls | wc -l)
	
	if [[ $response -lt $num_files ]]
	then
		echo "Guess too low, try again"
		false
	elif [[ $response -gt $num_files ]]
	then
		echo "Guess too high, try again"
		false
	else
		echo "You got it! Thanks for playing."
		echo "Exiting the game..."
		true
	fi

}

val=1
while [[ $val -ne 0 ]]
do 
	play
	let val=$(echo $?)
done


