#!/bin/bash


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
			echo "cpu"
			;;
		2)
			echo "memory"
			;;
		3)
			echo "disk"
			;;
		4) 
			echo "uptime"
			;;
		5)
			echo "users"
			;;
		6)
			echo "info"
			;;
		7)
			echo "exit"
			;;
		*)
			echo "Invalid choise"
			;;
	esac

	echo 
	read -p "Press enter..."
done
