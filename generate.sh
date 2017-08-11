#!/bin/sh

# Convert the input file into facts
./words2facts.py "$1"

# Make a directory for that specific file, don't want to make too much of a mess
FOLDER=$(basename "$1")
mkdir -p "$FOLDER"
mv words.facts "$FOLDER"

# Generate the "sentences" and clean it up so it's more human readable
souffle sentence.dl -F "$FOLDER" -D "$FOLDER"
