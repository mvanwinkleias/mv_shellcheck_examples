#!/bin/bash

function hello
{
	echo "hello"
}

a="$1"

b="${a:-$(hello)}"

echo "b: $b"
