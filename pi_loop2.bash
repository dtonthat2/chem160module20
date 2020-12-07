#!/bin/bash 
if [ ! -f pi.py ]
then
	echo "Please include pi.py in the local directory"
exit 1

elif [ $# -eq 0 ]
then
	echo "Please include at least one argument"
exit 1

else
for i in $*
do
	mkdir $i
	cd $i
	for j in {1..10}
	do
		../pi.py $i >> pi.out
	done
	cd ..
done
fi
