#!/bin/bash

# Check if the file exists
fileName="/boot/config.txt"
if [ ! -f "$fileName" ]; then
    echo "Config file '$fileName' not found!"
    exit 1
fi

# Extract the "0" of "display_rotate=0" using regex
option="display_rotate"
regex="^${option}=([0-9]+)"
while read line; do
    if [[ $line =~ $regex ]]; then
        before="${BASH_REMATCH}"
        result="$(( (${before} + 1) % 4))"
        echo "$before --> $result"

        sudo sed -i "s/^${option}=${before}/${option}=${result}/g" "$fileName"
        return 0
    fi
done < "$fileName"

echo "Missing option '$option' in config file!"
return 2
