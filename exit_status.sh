#!/bin/bash
 
echo hello # First command entered
echo $?    # Exit status 0 returned because command executed successfully. # By printing $?, we get the status of the previously executed command, in this case, 0
 
lskdf      # Unrecognized command. # This command does not exist
echo $?    # Non-zero exit status returned -- command failed to execute. # And it will return the status code 127 for command not found
 
echo # Blank line for readability
 
exit 113   # Will return 113 to shell # This asks to return 113 for the exit command
           # To verify this, type "echo $?" after the script terminates.
 
# By convention, an 'exit 0' indicates success,
# while a non-zero exit value means an error or anomalous condition.
# See the "Exit Codes With Special Meanings" appendix.
