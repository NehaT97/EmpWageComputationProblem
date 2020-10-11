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


function Emp_UsingSwitchCases
{
	isPartTime=1;
	isFullTime=2;	
	totalSalary=0;
	empRatePerHr=20;
	numWorkingDays=2;
	
	for (( day=1; day<=$numWorkingDays; day++ ))
	do
  		empCheck=$(($RANDOM%3));
   	
		case $empCheck in
     			$isFullTime)
           			empHrs=8
				;;
			$isPartTime)
				empHrs=4
				;;
		*)
				empHrs=0
				;;
		esac
	
	salary=$(($empHrs * $empRatePerHr));
	totalSalary=$(($totalSalary+$salary));
	echo "Total Wage:" $totalSalary
done

}

function main()
{
Emp_Attendance
Emp_DailyWage
Emp_PartTimeEmpWage
Emp_UsingSwitchCases
}
main
