#!/bin/bash
while IFS=: read -r out1 a out2 b c d e;
do
	echo -n "$out1 $out2 $(id -ng $out1)
"
done < /etc/passwd
