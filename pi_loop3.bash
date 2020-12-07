#!/bin/bash 
if [ ! -f pi.py ]
then
	echo "Please include pi.py in the local directory"
exit 1

elif [ $# -eq 0 ]
then
	echo "Please include at least one argument"
exit 1

elif [ ! -x pi.py ]
then 
	echo "pi.py is not an exacutable"
exit 1

else
for i in $*
do
	if [ -d $i ]; then
		echo "Directory named $i already exists"
	else
		mkdir $i
	fi

	cd $i
	if [ -f pi.out ]; then
		rm pi.out
	fi

	for j in {1..10}
	do
		../pi.py $i >> pi.out
	done
	lines=$(wc -l < "pi.out")
	echo "The number of lines in pi.out in $i is $lines"
	cd ..
done
fi
