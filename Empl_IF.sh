#! /bin/bash -x

ispresentft=1
ispresentpr=2
wageprhour=20

random1=$((RANDOM%3))

if [[ $random1 -eq $ispresentft ]]
then
        emphr=8
elif [[ $random1 -eq $ispresentpr ]]
then
        emphr=4
else
        emphr=0
fi
salary=$((emphr*wageprhour))
echo "The salary is $salary "






