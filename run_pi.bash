#!/bin/bash 
for i in 10 100 1000 10000
do 
  echo "Ntrials=$i" 
  pi.py $i
done 
