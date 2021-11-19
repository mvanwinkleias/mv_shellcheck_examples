#!/bin/bash

some_arg="$1"

if [[ -z "$some_arg" ]]
then
	some_arg=$(getent passwd -- "$USER" | awk -F ':' '{print $6}')
fi

echo "Something: $some_arg"
