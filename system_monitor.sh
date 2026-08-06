#!/bin/bash


cpu_usage() {

    idle=$(top -bn1 | grep "%Cpu" | awk '{print $8}')

    usage=$(awk "BEGIN {print 100-$idle}")

    echo "CPU Usage: $usage %"

}

memory_usage() {

	total=$( free -h | grep Mem | awk '{print $2}' )
	used=$( free -h | grep Mem | awk '{print $3}' )
	free=$( free -h | grep Mem | awk '{print $4}' )

	echo "Total Memory : $total"
	echo "Used Memory : $used"
	echo "Free Memory : $free"
}


disk_usage() {

	size=$( df -h / | awk 'NR==2 {print $2}' )
	usage=$( df -h / | awk 'NR==2 {print $3}' )
	available=$( df -h / | awk 'NR==2 {print $4}' )
	percentage=$( df -h / | awk 'NR==2 {print $5}' )

	echo "Disk Size       : $size"
	echo "Used space      : $used"
	echo "Available Space : $available"
	echo "Usage           : $percentage"

}

uptime_info() {

	echo "==== System Uptime ===="
	uptime
}

logged_users() {

	echo "==== Logged Users ===="
	
	who 

	echo
	echo "Total Users: $(who | wc -l)"

}

while true 
do
	clear


        echo "============================"
        echo "      SYSTEM MONITOR"
        echo "============================"
	echo
	echo "1) CPU Usage"
	echo "2) Memory Usage"
    	echo "3) Disk Usage"
    	echo "4) Uptime"
    	echo "5) Logged Users"
    	echo "6) System Information"
    	echo "7) Exit"
    	echo

	read -p "Choose: " choise

	case $choise in 

		1)
			cpu_usage
			;;
		2)
			memory_usage
			;;
		3)
			disk_usage
			;;
		4) 
			uptime_info
			;;
		5)
			logged_users
			;;
		6)
			echo "info"
			;;
		7)
			echo "Goodbye!"
			exit
			;;
		*)
			echo "Invalid choise"
			;;
	esac

	echo 
	read -p "Press enter..."
done
