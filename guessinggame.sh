#!/usr/bin/env bash
# File: guessinggame.sh

correct=$(find . -maxdepth 1 ! -type d | wc -l)

function Madhu {
  if [[ "$input" =~ ^[1-9]+$ ]] 
  then
    if [[ $input -eq $correct ]]
    then
      echo "Congratulations ,the answer is $input"
    else
      if [[ $input -gt $correct ]]
      then
        echo "Sorry,the answer is too high"
      else
        echo "Sorry,the answer is too low"
      fi
    fi
  else
    input=0
    echo "Sorry,the answer is a digit"
  fi

}

while [[ $correct -ne $input ]]
do
	echo "guess how many files are in the current directory"
	read input
	Madhu $input
done
