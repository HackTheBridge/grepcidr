#!/bin/bash

# The regex to match IPv4 CIDR blocks
regex='^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\/(3[012]|[12]?[0-9])$'

# Check if a file was supplied as an argument
if [[ -n "$1" ]]; then
    # If a file was supplied, check if it exists and is readable
    if [[ -r "$1" ]]; then
        grep -E "$regex" "$1"
    else
        echo "Error: Cannot read file $1" >&2
        exit 1
    fi
else
    # If no file was supplied, check if input is coming from the terminal
    if [[ -t 0 ]]; then
        echo "Error: No input provided" >&2
        exit 1
    else
        grep -E "$regex"
    fi
fi

