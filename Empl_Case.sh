#! /bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHour=20
totalSalary=0
numofWorkingDays=20

for(( day=1; day<=numofWorkingDays; day++ ))
do

	random1=$((RANDOM%3))
	case $random1 in 
		$isFullTime )
			empHrs=8;;
		$isPartTime )
			empHrs=4;;
		*)
			empHrs=0;;

	esac

	salary=$(($empRatePerHour*$empHrs))
	totalSalary=$(($totalSalary+$salary))
done
	echo "Total Salary is : $totalSalary"
