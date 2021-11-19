#!/bin/bash

function say_got_something
{
	echo "I got: " "$*"
}

file_name="$1"

if [[ -z "$file_name" ]]
then
	>&2 echo "First arg is file name."
	exit 1
fi

if [[ ! -e "$file_name" ]]
then
	>&2 echo "$file_name doesn't exist."
	exit 1
fi

while IFS= read -r line
do
	say_got_something "$line"
done < "$file_name"
