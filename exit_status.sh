#!/bin/bash
 
echo hello # Primo comando inserito
echo $?    # Exit status 0 returned because command executed successfully. # Stampando $?, otteniamo lo status per il comando eseguito in precedenza, in questo caso 0
 
lskdf      # Unrecognized command. # Questo comando non esiste
echo $?    # Non-zero exit status returned -- command failed to execute. # E darà quindi il codice di status 127, per comando non trovato
 
echo # Linea vuota per leggibilità
 
exit 113   # Will return 113 to shell #Così si chiede di stampare 113 per il comando exit
           # To verify this, type "echo $?" after script terminates.
 
#  By convention, an 'exit 0' indicates success,
#+ while a non-zero exit value means an error or anomalous condition.
#  See the "Exit Codes With Special Meanings" appendix.
