# seven-words
a silly "sentence generator" in datalog

**NOTE**: I've only tested this with Soufflé and I think they do some things differently to how other datalog thingies might work. so yeah.

**ALSO NOTE**: This was really just an experiment and hasn't been properly tested

## WHAT IT DOES
This program will generate "sentences" (7 words from bigrams chained together that do not appear in the original text), it reads in facts that contain the position of the word and the word itself, you can easily convert a text document into a format usuable by the program with `words2facts.py`

## HOW TO USE
* Run `./generate.sh [path to text file]` and there'll be a directory created named after the file specified, in that directory there'll be `sentences.csv` which has all the sentences

OR

* Compile all the datalog with Soufflé
* Run `words2facts.py [path to text file]` to convert a plaintext document into "facts" that Soufflé can deal with
* Run `sentence` to start generating "sentences"
* The final output will be in sentence.csv, it might be littered with \r and other stuff so you might want to clean that up

## TODO
* Neaten up some of the code and put in comments where needed

## ISSUES
* It doesn't care at all about newlines or punctuation, leading to weird results, but also the results are weird anyway.
