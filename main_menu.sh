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
	source ./add_user
	;;
	############################################
	"Modify User")
	source ./modify_user
	;;
	############################################
	"Delete User")
	source ./delete_user
	;;
	############################################
	"List Users")
	source ./list_users
	;;
	############################################
	"Add Group")
	source ./add_group
	;;
	############################################
	"Modify Group")
	source ./modifay_group
	;;
	############################################
	"Delete Group")
	source ./delete_group
	;;
	############################################
	"List Groups")
	source ./list_groups
	;;
	############################################
	"Disable User")
	source ./disable_user
	;;
	############################################
	"Enable User")
	source ./enable_user
	;;
	############################################
	"Change Password")
	source ./change_pass
	;;
	############################################
	"About")
	about="\nThis is a bash scripting project for linux administration\n
	Created by: Omar Gamal Eldin Shaqra\n"
	whiptail --title "About" --msgbox "${about}" 20 78
	;;
	############################################
	 *)
	 ;;
esac
done
