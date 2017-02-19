#!/bin/sh

if [ ! -x sentence ];
then
	souffle -o sentence sentence.dl
fi

# Convert the input file into facts
./words2facts.py "$1"

# Make a directory for that specific file, don't want to make too much of a mess
FOLDER=$(basename "$1")
mkdir -p "$FOLDER"
mv words.facts "$FOLDER"

# Generate the "sentences" and clean it up so it's more human readable
./sentence -F "$FOLDER" -D "$FOLDER"
sed -i -e 's/\r//g;s/\t/ /g' "$FOLDER"/sentence.csv
