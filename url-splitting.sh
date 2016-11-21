#!/bin/bash

function get_protocol() {
  VAR=$(echo "$1" |awk -F'://' '{print $1}')
  echo $VAR
}

function get_domain() {
  VAR=$(echo "$1" |awk -F'://' '{print $2}')
  echo $VAR
}

echo "protocol : $(get_protocol $1)"
echo "domain   : $(get_domain $1)"
#echo "protocol : $(echo $PARAM |awk -F'://' '{print $1}')"
#echo "domain   : $(echo $PARAM |awk -F'://' '{print $2}')"
