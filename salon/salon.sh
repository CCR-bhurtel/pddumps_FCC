#! /bin/bash

echo -e "\n~~~~~ MY SALON ~~~~~\n"

echo -e "Welcome to My Salon, how can I help you?"

PSQL="psql -X --username=freecodecamp --dbname=salon --no-align --tuples-only -c"

MAIN(){
  if [[ $1 ]]
  then
    echo "$1"
  fi
 SERVICES=$($PSQL "SELECT *FROM services")
 echo "$SERVICES" | while IFS="|" read SERVICE_ID NAME; do
  echo "$SERVICE_ID) $NAME"
 done
}

CHOOSE_SERVICE(){
  MAIN
  echo -e "\nChoose the service id"
  
  read SERVICE_ID_SELECTED
  SELECTED_SERVICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")


  if [[ -z $SELECTED_SERVICE ]]
  then
      MAIN "That service doesnot exist"
  else
    echo -e "\nEnter your phone number:"
    read CUSTOMER_PHONE
    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
    if [[ -z $CUSTOMER_ID ]]
    then
      echo -e "\nOops! you are not in our customer list. \nPlease enter your name."
      read CUSTOMER_NAME
      CUSTOMER_INSERT_RESULT=$($PSQL "INSERT INTO customers(phone, name) VALUES('$CUSTOMER_PHONE', '$CUSTOMER_NAME')")
      CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE name='$CUSTOMER_NAME'")
    else
      CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")
    fi
    echo -e "\nEnter service time 'hour:min'"
    read SERVICE_TIME
    APPOINTMENT_INSERT_RESULT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
    echo -e "\nI have put you down for a ${SELECTED_SERVICE} at $SERVICE_TIME, $CUSTOMER_NAME."
  fi

}


CHOOSE_SERVICE