#! /bin/bash -x

random1=$((RANDOM%2))

if [ $random1 -eq 0 ]

then
	echo " Employee is Present"
else 
	echo " Employee is no Present "
fi

