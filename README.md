# seven-words
a silly "sentence generator" in datalog

**ALSO NOTE**: This was really just an experiment and hasn't been properly tested

## WHAT IT DOES
This program will generate "sentences" (7 words from bigrams chained together that do not appear in the original text), it reads in facts that contain the position of the word and the word itself, you can easily convert a text document into a format useable by the program with `words2facts.py`

## HOW TO USE
* Run `./generate.sh [path to text file]` and there'll be a directory created named after the file specified, in that directory there'll be `sentences.csv` which has all the sentences

## TODO
* Neaten up some of the code and put in comments where needed

## ISSUES
* It doesn't care at all about newlines or punctuation, leading to weird results, but also the results are weird anyway.
* If your input file is in the same directory as the project, it'll try to make a directory with the same name as that file and it won't work
