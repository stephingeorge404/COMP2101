#!/bin/bash
#
# This script implements a guessing game
# it will pick a secret number from 1 to 10
# it will then repeatedly ask the user to guess the number
#    until the user gets it right

# Give the user instructions for the game
cat <<EOF
Let's play a game.
I will pick a secret number from 1 to 10 and you have to guess it.
If you get it right, you get a virtual prize.
Here we go!
EOF

# Pick the secret number and set their default guess to be a wrong answer
secretnumber=$(($RANDOM % 10 +1)) # save our secret number to compare later
userguess=0

# This loop repeatedly asks the user to guess and tells them if they got the right answer
# TASK 1: Test the user input to make sure it is not blank
# TASK 2: Test the user input to make sure it is a number from 1 to 10 inclusive
# TASK 3: Give them better feedback, telling them if their guess is too low, or too high

while [ $userguess != $secretnumber ]; do # loop around until they get it right
  read -p "Please enter a number between 1 and 10: " userguess # ask for a guess
#  if [ $userguess -eq $secretnumber ]; then
#    echo "You got it! Have a milkdud."
#    exit
#  fi
#done
  while [ -z "$userguess" ];
  do
    read -p "Please enter a number between 1 and 10: " userguess
  done
  if [ $userguess -le 10 ] && [ $userguess -gt 1 ]
  then
    if [ "$userguess" -gt "$secretnumber" ]
    then
      echo "Oops!! The number you guesed is HIGH!!"
    elif [ "$userguess" -lt "$secretnumber" ]
    then
      echo "Oops!! The number you guesed is LOW"
    else
      echo "Attaboy... What a performance. You guessed it right man."
      exit
    fi
  else
  echo "Better luck next time"
  fi
done
