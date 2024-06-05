#!/bin/bash4
# fetch_address.sh # We use bash4 for this script, which is the first version that supports associative arrays

declare -A address # The associative array allows using the string "address" as a key for all its indices
#       -A option declares associative array.
 
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236" # With this syntax, we can call all indices using square brackets
address[John]="202 E. 3rd St., New York, NY 10009" # In this case, we are assigning the value to the "John" index
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"
 
echo "Charles's address is ${address[Charles]}." # This way we can print the indices
# Charles's address is 414 W. 10th Ave., Baltimore, MD 21236.
echo "Wilma's address is ${address[Wilma]}."
# Wilma's address is 1854 Vermont Ave, Los Angeles, CA 90023.
echo "John's address is ${address[John]}."
# John's address is 202 E. 3rd St., New York, NY 10009.
 
echo # Blank line for readability

echo "${!address[*]}"   # The array indices ... # We can even print all the indices using regex, just by putting an asterisk in square brackets
   #And the ! to ask for address as the start of the line 
# Charles John Wilma
