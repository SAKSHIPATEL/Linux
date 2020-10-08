#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHour=20
numofWorkingDays=20
maxHrsInMonth=40
totalEmpHours=0
totalWorkingDays=0

#for(( day=1; day<=numofWorkingDays; day++ ))
function getWorkingHours(){
	case $1 in 
		$isFullTime )
			empHrs=8;;
		$isPartTime )
			empHrs=4;;
		*)
			empHrs=0;;

	esac
	echo $empHrs

}

	function getEmpWage(){
		oneDayHrs=$1
		echo $(($oneDayHrs*$empRatePerHour))
	}

while [[ $totalEmpHours -lt $maxHrsInMonth && $totalWorkingDays -lt $numofWorkingDays ]]
do

	((totalWorkingDays++))
	empHours=$( getWorkingHours $((RANDOM%3)) )
	totalEmpHours=$(($totalEmpHours+$empHours))
	dailyWages[$totalWorkingDays]=$(getEmpWage $EmpHours)
	
done
	
	totalSalary=$(($empRatePerHour*$totalEmpHours))
	echo "Total Salary is : $totalSalary"
	echo "Daily Wages :${dailyWages[@]}"
