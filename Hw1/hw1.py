#!/usr/bin/python
#homework 1 part 3
#python

import sys
if len(sys.argv) >1:
	for file in sys.argv[1:]:
		contents = open(file, 'r').read()
		sys.stdout.write(contents)
