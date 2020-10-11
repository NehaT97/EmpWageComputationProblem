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


function Emp_PartTimeEmpWage()
{
	isPartTime=1;	
	isFullTime=2;
	empRatePerHr=20;
	randomCheck=$(( $RANDOM%3 ));
	if [ $isPartTime -eq $randomCheck ]
	then
		empHrs=4;

  	elif [ $isFullTime -eq $randomCheck ]
	then	
        	empHrs=8;
  	else
        	empHrs=0;
	fi
        PartTimeEmp=$(( $empRatePerHr*$empHrs ));
	echo "Part Time Empployee Wage:"$PartTimeEmp
}

function main()
{
Emp_Attendance
Emp_DailyWage
Emp_PartTimeEmpWage
}
main
