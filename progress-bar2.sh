#! /bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by ABS Guide author).
# Used in ABS Guide with permission (thanks!).
 
# Invoke this script with bash. It doesn't work with sh.
 
interval=1 # Time interval of 1 second
long_interval=10 # Longer interval, this time 10 seconds
 
{ # Begin function
     trap "exit" SIGUSR1 # Set a trap for the SIGUSR1 signal, which is a user-defined signal
     sleep $interval; sleep $interval # Activate sleep twice with the interval variable, equal to 1 second, so the program will "sleep" for two seconds
     while true # Begin while loop, it will continue as long as the condition is true
     do # Required in a while loop
       echo -n '.'     # Use dots. # Print a dot, but avoid a line break with -n
       sleep $interval # Sleep again for 1 second
     done; } &         # Start a progress bar as a background process. # Close the function and put the progress bar in the background
 
pid=$! # $! contains the ID of the previously executed process, so we save it in a variable
trap "echo !; kill -USR1 $pid; wait $pid"  EXIT        # To handle ^C.
# This block asks the program to print a !, and set a trap for the EXIT signal, which functions like Control+C and sends the USR1 signal to the process
 
echo -n 'Long-running process ' # Print the string without a line break using -n
sleep $long_interval # Finally, the long interval variable is used, with 10 seconds
echo ' Finished!' # Informs us of the end of the "process"
 
kill -USR1 $pid # This sends the signal to the process and stops it
wait $pid              # Stop the progress bar.
trap EXIT
 
exit $? # Script ends, and we also get the status code of the executed command. If executed correctly, it should be 0
