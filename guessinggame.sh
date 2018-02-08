#!bin/usr/env bash
# File: guessinggame.sh

#number of files in the current folder
N=$(ls -l ./ | grep "^-" | wc -l)

#function guessnumber
#ask player for the number of files in the current folder
function guessnumber {
  echo "What is the number of files in the current directory: "
  read guess
    }
#variable to control the while loop
status=0

#function evaluatenumber
#evaluates the value of the guessed number
function evaluatenumber {
while [[ $status -eq 0 ]]
do
  guessnumber
  if [[ $guess -lt $N ]]
  then
    status=0
    echo "$guess is too low"
    echo "Try again!"
    #echo $status #check for status of loop
  elif [[ $guess -gt $N ]]
  then
    status=0
    echo "$guess is too high"
    echo "Try again!"
    #echo $status #check for status of loop
  else
    let status=1
    echo "You guessed correctly that the number of files in the current folder is $N."
    echo "Congratulations!"
    #echo "$status" #check for status of loop
  fi
done
    }
evaluatenumber
