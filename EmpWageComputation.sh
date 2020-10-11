#!/bin/bash 
#Welcome to Employee Wage Computation#

function Emp_Attendance()
{
	random=$((RANDOM%2))
	echo $random;
	if [ $random -eq 1 ]
	then
		echo "Employee is Present"
	else
		echo "Employee is Absent"
	fi
}


function Emp_DailyWage()
{
	isPresent=1;
 	empRatePerHr=20;
	randomCheck=$(( $RANDOM%2 ));
	if [ $isPresent -eq $randomCheck ]
   	then
		empHrs=8;

  	else
		empHrs=0;
	fi

        salary=$(( $empRatePerHr*$empHrs ));
	echo "Employee Wage:"$salary

}



function main()
{
Emp_Attendance
Emp_DailyWage
}
main
