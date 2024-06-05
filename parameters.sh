#!/bin/bash  

# Call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10 # Set the minimum number of parameters to 10 with the variable MINPARAMS
 
echo # Blank line for improved readability
 
echo "The name of this script is \"$0\"." # Completes the echoed string with the $0 parameter, thus obtaining the script name and path
# Adds ./ for current directory
echo "The name of this script is \"`basename $0`\"." # This way, only the name is obtained without the path
# Strips out path name info (see 'basename')
 
echo # Another blank line
 
if [ -n "$1" ]    # These conditional blocks check that the parameters are not empty          # Tested variable is quoted.
then
 echo "Parameter #1 is $1"  # Need quotes to escape # # And print the content of the parameter
fi # Closes the conditional block
 
if [ -n "$2" ]
then
 echo "Parameter #2 is $2"
fi
 
if [ -n "$3" ]
then
 echo "Parameter #3 is $3"
fi
 
# ...
 
 
if [ -n "${10}" ]  # Parameters > $9 must be enclosed in {brackets}.
then
 echo "Parameter #10 is ${10}"
fi
 
echo "-----------------------------------" # Prints a line for better readability
echo "All the command-line parameters are: "$*"" # And using regex, prints all parameters from 1 to 10
 
if [ $# -lt "$MINPARAMS" ] # Now it checks that the parameters are at least 10, if the number is less than 10...
then
  echo
  echo "This script needs at least $MINPARAMS command-line arguments!" # ...the system will print this string
fi 
 
echo
 
exit 0 # Ends the script
