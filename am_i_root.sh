#!/bin/bash
# am-i-root.sh:   Am I root or not?
 
ROOT_UID=0   # Root has $UID 0.
 
if [ "$UID" -eq "$ROOT_UID" ]  # Con lo statement if compariamo la variabile UID a quella ROOT_UID, se la prima corrispondesse zero...
then # ..allora...
  echo "You are root." # Ci verrebbe confermato il nostro essere root
else # altrimenti...
  echo "You are just an ordinary user (but mom loves you just the same)." # Ci informano che non siamo effettivamente root
fi # Chiusura del blocco condizionale 
 
exit 0 # Ed uscita dallo script
 
# ============================================================= #
# Code below will not execute, because the script already exited.
 
# An alternate method of getting to the root of matters:
 
ROOTUSER_NAME=root # Questa volta la variabile viene impostata non numericamente ma con testo
 
username=`id -nu` # Con questo comando e queste opzioni, la variabile username conterrà il nome utente attuale, si poteva ottenere anche con il comando whoami
if [ "$username" = "$ROOTUSER_NAME" ] #Compara il nome utente attuale a "root", se uguale...
then # ...allora...
  echo "Rooty, toot, toot. You are root." # Sei root
else # altrimenti
  echo "You are just a regular fella." # No
fi # E chiude il blocco condizionale
