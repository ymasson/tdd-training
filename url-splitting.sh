#!/bin/bash

PARAM=$1

function get_protocol() {
  VAR=$(echo "$PARAM" |awk -F'://' '{print $1}')
  echo $VAR
}

function get_domain() {
  VAR=$(echo "$PARAM" |awk -F'://' '{print $2}')
  echo $VAR
}

echo "protocol : $(get_protocol)"
echo "domain   : $(get_domain)"
#echo "protocol : $(echo $PARAM |awk -F'://' '{print $1}')"
#echo "domain   : $(echo $PARAM |awk -F'://' '{print $2}')"
