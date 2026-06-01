#!/bin/awk -f
NR > 1{printf "%s %s %d %d\n", $1, $2, $3, $4, $5}

