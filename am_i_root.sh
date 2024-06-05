#!/bin/bash
# am-i-root.sh:   Am I root or not?
 
ROOT_UID=0   # Root has $UID 0.
 
if [ "$UID" -eq "$ROOT_UID" ]  # With the initial if statement, we are checking if the UID variable equals the ROOT_UID variable, should UID be 0...
then # 
  echo "You are root." # We would get a confirmation that yes, we are logged in as the root user
else # If the user id, the UID variable, is any number but zero...
  echo "You are just an ordinary user (but mom loves you just the same)." # We get notified that we are in fact not the root user
fi # The "fi" keyword closes the conditional block
 
exit 0 # And the script gets then terminated with the "exit"
 
# ============================================================= #
# Code below will not execute, because the script already exited.
 
# An alternate method of getting to the root of matters:
 
ROOTUSER_NAME=root # This time we set the variable not as a number, but as a string
 
username=`id -nu` # With the n and u options we get as an output of the id request the logged username, same output would be granted by the whoami command
if [ "$username" = "$ROOTUSER_NAME" ] # So if the output of id -nu equals to "root", stored in the ROOTUSER_NAME variable...
then 
  echo "Rooty, toot, toot. You are root." # ... root user confirmed...
else # 
  echo "You are just a regular fella." # ... or not, should the two variables store different values
fi 
