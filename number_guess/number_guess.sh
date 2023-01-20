#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUM=$(( $RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
USER_EXISTED=''
if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  USER_INSERT_STATUS=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USERNAME'")
else
  DETAILS=$($PSQL "SELECT count(*) as total_games, min(score) as best_game FROM users INNER JOIN GAMES USING(user_id) WHERE name='$USERNAME'")
  echo "$DETAILS" | while IFS='|' read TOTAL_GAMES BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $TOTAL_GAMES games, and your best game took $BEST_GAME guesses. "
  done
  echo $USER
fi

echo "Guess the secret number between 1 and 1000:"
COUNT=0
GUESS_NUMBER(){
  COUNT=$(( $COUNT + 1 ))
  read USER_NUM
  if ! [[ $USER_NUM =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    GUESS_NUMBER
  fi
  if [[ USER_NUM -lt RANDOM_NUM ]]
  then
    echo "It's higher than that, guess again:"
    GUESS_NUMBER
  elif [[ USER_NUM -gt RANDOM_NUM ]]
  then
    echo "It's lower than that, guess again:"
    GUESS_NUMBER
  else
    echo "You guessed it in $COUNT tries. The secret number was $RANDOM_NUM. Nice job!"

  fi
}
GUESS_NUMBER
GAME_INSERT_STATUS=$($PSQL "INSERT INTO games(user_id, score) VALUES($USER_ID, $COUNT)")
