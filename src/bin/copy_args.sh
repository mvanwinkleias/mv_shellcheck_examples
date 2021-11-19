#!/bin/bash

something="$*"
echo "dollar at: $something"
all_arguments=( "$@" )

echo "All arguments: ${all_arguments[*]}"
