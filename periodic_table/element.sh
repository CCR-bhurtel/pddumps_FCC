#! /bin/bash


PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else  
  if grep -q "^[0-9]*$" <<< "$1"
  then
      QUERY_RESULT=$($PSQL "SELECT * FROM properties INNER JOIN ELEMENTS using(atomic_number) INNER JOIN types using(type_id) WHERE atomic_number=$1")
  else
    ARGUMENT=$1
    LENGTH=${#ARGUMENT}
  
    if [[ $LENGTH -le 2 ]]
    then
      QUERY_RESULT=$($PSQL "SELECT * FROM properties INNER JOIN ELEMENTS using(atomic_number) INNER JOIN types using(type_id) WHERE symbol='$1'")
    else
      QUERY_RESULT=$($PSQL "SELECT * FROM properties INNER JOIN ELEMENTS using(atomic_number) INNER JOIN types using(type_id) WHERE name='$1'")
    fi
  fi

  if [[ -z $QUERY_RESULT ]]
  then
    echo "I could not find that element in the database."
  else
    echo "$QUERY_RESULT" | while IFS="|" read TYPE_ID ATOMIC_NUMBER ATOMIC_MASS MELTING_POINT BOILING_POINT SYMBOL NAME TYPE
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a ${TYPE}, with a mass of ${ATOMIC_MASS} amu. ${NAME} has a melting point of ${MELTING_POINT} celsius and a boiling point of ${BOILING_POINT} celsius."
    done 
  fi
fi
