# The code must be executed with root administrator privileges, sudo is not enough

cd /var/log # Change directory to /var/log, where log files are usually stored
cat /dev/null > messages # Use cat to print the contents of /dev/null, which is usually empty, and then overwrite the messages file using redirection

# At this point, the messages file will be empty as well

cat /dev/null > wtmp # The same goes for the wtmp file, which stores user login and logout logs
echo "Log files cleaned up." # And with echo, we have a string confirming that the two files have been overwritten
