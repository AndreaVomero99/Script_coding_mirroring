#!/bin/bash4
# fetch_address.sh #Utilizziamo per questo script bash4, che è la prima versione infatti a supportare gli array associativi
 
declare -A address # L'array associativo permette di utilizzare la stringa "address" come chiave per tutti gli indici al suo interno
#       -A option declares associative array.
 
address[Charles]="414 W. 10th Ave., Baltimore, MD 21236" #Con questa sintassi, potremmo chiamare tutti gli indici tramite le parentesi quadre
address[John]="202 E. 3rd St., New York, NY 10009" # In questo caso, stiamo assegnando al nome "john", il valore di indice
address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"
 
 
echo "Charles's address is ${address[Charles]}." # Così possiamo stampare gli indici
# Charles's address is 414 W. 10th Ave., Baltimore, MD 21236.
echo "Wilma's address is ${address[Wilma]}."
# Wilma's address is 1854 Vermont Ave, Los Angeles, CA 90023.
echo "John's address is ${address[John]}."
# John's address is 202 E. 3rd St., New York, NY 10009.
 
echo # Linea vuota per leggibilità
 
echo "${!address[*]}"   # The array indices ... # Addirittura tramite regex possiamo stampare tutti gli indici, mettendo solo l'asterisco tra parentesi
   #E il ! per chiedere address come inizio della linea 
# Charles John Wilma
