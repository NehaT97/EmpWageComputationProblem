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

function main()
{
Emp_Attendance
}
main
