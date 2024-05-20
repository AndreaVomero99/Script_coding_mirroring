#!/bin/bash
# Naked variables
 
echo
 
# When is a variable "naked", i.e., lacking the '$' in front?
# When it is being assigned, rather than referenced.
 
# Assignment
a=879 # Viene assegnato il valore 879 ad a
echo "The value of \"a\" is $a." # E stampatone il contenuto
 
# Assignment using 'let'
let a=16+5 # Si può anche assegnare il valore tramite let, in questo caso immettendo come valore il risultato della somma
echo "The value of \"a\" is now $a."
 
echo # Linea vuota per leggibilità
 
# In a 'for' loop (really, a type of disguised assignment):
echo -n "Values of \"a\" in the loop are: " # Con -n si evita di andare a capo
for a in 7 8 9 11 # Vengono assegnati a turno ad a i seguenti valori
do # Il do si potrebbe anche omettere in un ciclo for, mentre è necessario in un ciclo while
  echo -n "$a " # Stampa i valori assegnati, sempre evitando di andare a capo
done # E si chiude il blocco iterativo
 
echo
echo # Doppia linea vuota per leggibilità
 
# In a 'read' statement (also a type of assignment):
echo -n "Enter \"a\" " # Chiede input all'utente, e di inserire un valore quindi di a, il tutto senza andare a capo
read a # Legge il valore dato dall'utente
echo "The value of \"a\" is now $a." # E lo stampa
 
echo
 
exit 0 # e si chiude
