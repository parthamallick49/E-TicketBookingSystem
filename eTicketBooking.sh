#!/bin/bash

wellcome_message(){
	echo "			************************************"
	echo "			*                                  *"
	echo "			*                                  *"
	echo "			*          Welcome To the          *"
	echo "			*      E-Ticket Booking System     *"
	echo "			*                                  *"
	echo "			*                                  *"
	echo "			*                                  *"
	echo "			************************************"
}

# ======================== *** User Section *** =======================

user(){
	# IN CONSTRUCTION
}


mainfun(){
	wellcome_message
	
	while true
	do
		echo "			==================================="
		echo "			::                               ::"
		echo "			::    => Who are you?            ::"
		echo "			::    1. User                    ::"
		echo "			::    2. Authority               ::"
		echo "			::    0. Exit                    ::"
		echo "			::                               ::"
		echo "			==================================="
		
		
		echo "Enter your choise: "
		read userChoise
		
		if [ $userChoise -eq 1 ]; then
			user
		elif [ $userChoise -eq 2 ]; then
			authority
		elif [ $userChoise -eq 0 ]; then
			exit 
		else 
			echo "Entered number is wrong. Please enter valid Number."
		fi
        done
        
        
}

mainfun 

