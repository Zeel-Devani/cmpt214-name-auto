#!/bin/bash

# WARNING: This script is for educational purposes only.
# Use it at your own risk. Always back up your files before running the script.
# Always commit the changes before running the script.

####################################################

# Author: Devani, Zeel Jitendrabhai
# GitHub: github.com/Zeel-Devani

######################################################


# Identification Variables, Change as per your needs
NAME="LastName, FirstName" 
NSID="abc123"
STUDENT_NUMBER="123456789"
COURSE="CMPT214-01 2024"

# Header for .c files and git.log (It doesn't matter what format of header you use for git.log file)
C_GIT_HEAD="/*
Name: $NAME
NSID: $NSID
Student Number: $STUDENT_NUMBER
Course: $COURSE
*/"

# Header for .sh files and Makefile
SH_MAKEFILE_HEAD="# Name: $NAME
# NSID: $NSID
# Student Number: $STUDENT_NUMBER
# Course: $COURSE"

# Function to add a header to a file
# Args:
#	$1 - Filename for which the header should be added
#	$2 - Header content to add
#
# Purpose: This function checks if the specified header already exists in the file.
# If it does not, it adds the header to the top of the file.
# 
# Pre-conditions: User must have permission to write the files
# 
# Post-conditions: The Header is added to the files
# 
# Return: None
add_head()
{
	local file="$1" 	# File to modify
	local head="$2"		# Which format of header to add

	# Check if NSID is already present in the file
	if ! grep -q "$NSID" "$file"; # Quite mode to not return output to the terminal, instead only return exit status
	then
		echo "$head" | cat - "$file" > temp && mv temp "$file" # Concatenates and displacys the content of files, and replaces the original file with a new file that has the header
		echo "Header added to $file"
	else
		echo "Header already exists in $file"
	fi
}

# Loop through the all working files in directory
for file in *;
do 
	if [[ "$file" == *.c || "$file" == "git.log" ]]; # Checks for .c for git.log file
	then
		add_head "$file" "$C_GIT_HEAD"		# Add the header
	elif [[ "$file" == *.sh && "$file" != "$(basename "$0")" ]]; #Exludes the current .sh file
	then
		add_head "$file" "$SH_MAKEFILE_HEAD"
	elif [[ "$file" == "Makefile" ]]; 		# Checks if there is a Makefile
	then
		add_head "$file" "$SH_MAKEFILE_HEAD"
	fi
done

