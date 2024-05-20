# Il codice deve essere eseguito con privilegi da amministratore root, il sudo non basta

cd /var/log # cambiamo directory, raggiungendo la directory var, dove sono solitamente conservati i log
cat /dev/null > messages # con il cat printiamo il contenuto del file null, che è solitamente vuoto, di conseguenza sovrascriviamo con la redirection il file messages

# A quest punto il file messages sarà vuoto anche lui stesso

cat /dev/null > wtmp # stesso discorso per il file wtmp, che conserva i log di accesso e disconnessione degli utenti
echo "Log files cleaned up." # e con echo abbiamo anche una stringa che ci conferma l'avvenuta sovrascrizione dei due file 
