#!/bin/bash

# Check if the file exists
ConfigFile="/boot/config.txt"
if [ ! -f "$ConfigFile" ]; then
    echo "Config file '$ConfigFile' not found!"
    exit 1
fi

# Extract the "0" of "display_rotate=0" using regex
option="display_rotate"
regex="^${option}=([0-9]+)"
while read line; do
    if [[ $line =~ $regex ]]; then
        before="${BASH_REMATCH}"
        result="$(( (${before} + 3) % 4))"
        echo "$before --> $result"

        sudo sed -i "s/^${option}=${before}/${option}=${result}/g" "$ConfigFile"
        return 0
    fi
done < "$ConfigFile"

echo "Missing option '$option' in config file!"
return 2
