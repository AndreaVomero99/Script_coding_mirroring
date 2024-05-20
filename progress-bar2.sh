#! /bin/bash
# progress-bar2.sh
# Author: Graham Ewart (with reformatting by ABS Guide author).
# Used in ABS Guide with permission (thanks!).
 
# Invoke this script with bash. It doesn't work with sh.
 
interval=1 # Intervallo di tempo pari a 1 secondo
long_interval=10 # Intervallo più lungo, stavolta 10 secondi
 
{ #Aperta funzione
     trap "exit" SIGUSR1 # Stabilisce un trap per il segnale SIGURSR1, che è un segnale dell'utente stesso
     sleep $interval; sleep $interval # Attiva due volte sleep con la variabile interval, pari a 1 secondo, quindi il programma "dormirà" per due secondi
     while true # Apertura ciclo while, finché la condizione sarà vera continuerà
     do # Necessario in un ciclo while
       echo -n '.'     # Use dots. # Stampa il punto, ma evita di andare a capo tramite -n
       sleep $interval # Di nuovo dormita per 1 secondo
     done; } &         # Start a progress bar as a background process. # Chiude la funzione e mette in background la progress bar 
 
pid=$! # $! contiene l'id del processo eseguito precendentemente, quindi lo salviamo in una variabile
trap "echo !; kill -USR1 $pid; wait $pid"  EXIT        # To handle ^C. 
#Il blocco chiede al programma di stampare un !, e di impostare una trappola per il segnale EXIT. che funge come un control + c e manda il segnale USR1 al processo

 
echo -n 'Long-running process ' # Stampa la stringa, senza andare a capo tramite -n
sleep $long_interval # viene usata finalmente la variabile lunga, con 10 secondi
echo ' Finished!' # E ci informa della fine del "processo"
 
kill -USR1 $pid #Con questo viene mandato il segnale al processo, e lo ferma
wait $pid              # Stop the progress bar.
trap EXIT
 
exit $? # Script terminato, e otteniamo anche il codice di status del comando eseguito, se eseguito correttamente dovrebbe risultare 0
