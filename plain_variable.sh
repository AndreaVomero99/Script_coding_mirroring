#!/bin/bash
# Naked variables
 
echo
 
# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
 
# Assignment
a=879 # The value 879 is assigned to a
echo "The value of \"a\" is $a." # And its content is printed
 
# Assignment using 'let'
let a=16+5 # The value can also be assigned using let, in this case, inputting the result of the addition
echo "The value of \"a\" is now $a."
 
echo # Blank line for readability
 
# In a 'for' loop (really, a type of disguised assignment):
echo -n "Values of \"a\" in the loop are: " # With -n, it prevents the line break
for a in 7 8 9 11 # The following values are assigned to a in turn
do # The do can be omitted in a for loop, while it is necessary in a while loop
  echo -n "$a " # Prints the assigned values, always avoiding a line break
done # Closes the iterative block
 
echo
echo # Double blank line for readability
 
# In a 'read' statement (also a type of assignment):
echo -n "Enter \"a\" " # Asks for user input to enter a value for a, without a line break
read a # Reads the value given by the user
echo "The value of \"a\" is now $a." # And prints it
 
echo
 
exit 0 # Ends the script
