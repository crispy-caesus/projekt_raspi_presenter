#!/bin/bash

echo "run okular to display images"
okular --presentation "$(xdg-user-dir PICTURES)/"
