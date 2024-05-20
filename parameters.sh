#!/bin/bash  
 
# Call this script with at least 10 parameters, for example
# ./scriptname 1 2 3 4 5 6 7 8 9 10
MINPARAMS=10 # Imposta il numero di parametri minimi a 10 con la variabile MINPARAMS
 
echo # Linea vuota, così da lasciare lo spazio per leggibilità migliorata
 
echo "The name of this script is \"$0\"." # Completa la stringa printata dall'echo con il parametro $0, ottenendo così nome dello script e anche il percorso
# Adds ./ for current directory
echo "The name of this script is \"`basename $0`\"." # Così si ottiene sempre il nome, ma senza il percorso
# Strips out path name info (see 'basename')
 
echo # Sempre linea vuota
 
if [ -n "$1" ]    # Questi blocchi condizionali controllano che i parametri non siano vuoti          # Tested variable is quoted.
then
 echo "Parameter #1 is $1"  # Need quotes to escape # # E stampano il contenuto del parametro
fi # E chiude il blocco condizionale
 
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
 
echo "-----------------------------------" # Stampa una linea sempre per favorire la leggibilità
echo "All the command-line parameters are: "$*"" # E tramite la regex stampa tutti i parametri da 1 a 10
 
if [ $# -lt "$MINPARAMS" ] # Ora verifica che i parametri siano almeno 10, qualora fosse inferiore a 10 il numero...
then
  echo
  echo "This script needs at least $MINPARAMS command-line arguments!" # ...il sistema stamperà a schermo questa stringa
fi 
 
echo
 
exit 0 # E si chiude lo script
