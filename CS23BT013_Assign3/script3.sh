#!/bin/bash

if [ $# -eq 0 ];
then
  echo " enter the argument that should be passed "
fi

var_name="$1"
valid=true

if [[ ! "$var_name" =~ ^[a-zA-Z_] ]];
then
  valid=false
fi

if [[ ! "$var_name" =~ ^[a-zA-Z_][a-zA-Z0-9_]*$ ]];
then
  valid=false
fi

if [[ "$var_name" =~ [[:space:]] ]];
then
  valid=false
fi

if [[ "$var_name" =~ [^a-zA-Z0-9_] ]];
then
  valid=false
fi

if [[ "$valid" == true ]];
then
  echo "The variable name $var_name is valid."
else
  echo "The variable name $var_name is invalid."
fi
