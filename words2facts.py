#!/usr/bin/env python3

import sys
import string
import csv

def generate_facts(text, filename='words.facts'):
    words = text.split()
    with open(filename, 'w', newline='') as f:
        fact_writer = csv.writer(f, delimiter='\t')
        for index, word in enumerate(words):
            fact_writer.writerow((index, word.strip(string.punctuation)))

def main():
    if len(sys.argv) == 2:
        filename = sys.argv[1]
        with open(filename, 'r') as f:
            text = f.read()
    elif len(sys.argv) == 1:
        text = input("Enter the text you wish to use: ")
    else:
        print("<Usage> {program} <path to file>".format(program=argv[1]), file=sys.stderr)
        return 1
    generate_facts(text)
    print("DONE!")


if __name__ == '__main__':
    main()
