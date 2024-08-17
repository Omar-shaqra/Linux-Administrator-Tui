#!/bin/bash

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

while true; do
  Menu=$(whiptail --cancel-button "Exit" --title "Bash Project" --menu "Choose an option" 27 78 18 \
  "Add User" "Add a user to the system." \
  "Modify User" "Modify an existing user." \
  "Delete User" "Delete an existing user." \
  "List Users" "List all users on the system." \
  "Add Group" "Add a user group to the system." \
  "Modify Group" "Modify a group and its list of members." \
  "Delete Group" "Delete an existing user." \
  "List Groups" "List all groups on the system" \
  "Disable User" "Lock the user account" \
  "Enable User" "Unlock the user account" \
  "Change Password" "Change Password of a user" \
  "About" "Information about the program and owner." \
   3>&1 1>&2 2>&3)
  
  if [ $? != 0 ]; then exit; fi


case $Menu in
	"Add User")
	source ./add-user
	;;
	############################################
	"Modify User")
	source ./modify-user
	;;
	############################################
	"Delete User")
	source ./delete-user
	;;
	############################################
	"List Users")
	source ./list-users
	;;
	############################################
	"Add Group")
	source ./add-group
	;;
	############################################
	"Modify Group")
	source ./modify-group
	;;
	############################################
	"Delete Group")
	source ./delete-group
	;;
	############################################
	"List Groups")
	source ./list-groups
	;;
	############################################
	"Disable User")
	source ./disable-user
	;;
	############################################
	"Enable User")
	source ./enable-user
	;;
	############################################
	"Change Password")
	source ./change-pass
	;;
	############################################
	"About")
	about="\nThis is a bash scripting project for linux administration\n
	Created by: Ziad Magdy Hanafy Eltity\n
	Instructor: Romany Nageh\n
	Information Technology Institute (ITI)"
	whiptail --title "About" --msgbox "${about}" 20 78
	;;
	############################################
	 *)
	 ;;
esac
done


