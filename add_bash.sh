#!/bin/bash
sum=0
for i in "$@"
do
    sum=$((sum + i))  # bash 전용 산술연산 
done
echo $sum
