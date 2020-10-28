#!/bin/sh
find ../usr/src/kernels -name '*.h' -exec grep -i 'magic' {} \; | wc -l
