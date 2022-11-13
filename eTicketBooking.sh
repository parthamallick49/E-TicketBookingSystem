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

userSection(){
	echo "	======================== *** User Section *** ===================="
	
	## This section is under maintenance
}





# ======================== *** Authority Section *** =======================

authoritySection(){
	echo "	======================== *** Authority Section *** ===================="
	
	availableSit=0
	i=0
	while [ $i -le 9 ]
	do
		if [ ${!busSit[$i]} -e 0 ]
		then
			availableSit=$((availableSit + 1))
		fi
	i=$((i + 1))
	done
	
	
	echo "			Total available sit right now is: $availableSit"
	
	
}




mainfun(){
	wellcome_message
	

	declare -A busSit={0 0 0 0 0 0 0 0 0}       ## 0 means the sit is available
					   ## 1 means the sit is not available
	
	
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
			userSection
		elif [ $userChoise -eq 2 ]; then
			authoritySection
		elif [ $userChoise -eq 0 ]; then
			exit 
		else 
			echo "Entered number is wrong. Please enter valid Number."
		fi
        done
        
        
}

mainfun 
