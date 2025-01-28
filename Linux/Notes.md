# Introduction to Linux

 This page is a brief introduction to Linux with some examples and explanations to get you started.
---
# What is Linux?

Linux is an open-source operating system based on Unix,there are many versions, called distributions or distros. A well known distribution of Linux is known as Ubuntu which is user friendly. 
Most things that you can do on Win/Mac can be done on Linux operating system.

---
# Ubuntu & WSL
As mentioned, Ubuntu is one of the distibutions used for Linux. To install ubunut you can go to the official site downloading the ISO file and running it via a virtual machine for learning and experimentation.
WSL is also another option where windows has implimented the Windows Subsystem for Linux (WSL) which allows you to run Linux distributions like Ubuntu directly on Windows, providing a Linux-like environment without dual-booting.

---
## Essential Linux Commands and Explanations

## 1. `pwd` (Print Working Directory)  
Displays the current directory you are working in.

## 2. `ls` (List Directory Contents)  
Lists files and directories in the current directory.  
- Use `ls -l` for detailed information.  
- Use `ls -a` to include hidden files.

## 3. `cd` (Change Directory)  
Changes the working directory.  
Example: `cd /home` moves to the `/home` directory.

## 4. `mkdir` (Make Directory)  
Creates a new directory.  
Example: `mkdir my_folder`.

## 5. `rm` (Remove Files or Directories)  
Deletes files or directories.  
- Example: `rm file.txt` deletes a file.  
- Use `rm -r folder_name` to delete directories recursively.

## 6. `cp` (Copy Files or Directories)  
Copies files or directories.  
- Example: `cp source.txt destination.txt` copies a file.  
- Use `cp -r folder1 folder2` to copy directories.

## 7. `mv` (Move or Rename Files)  
Moves or renames files.  
- Example: `mv old_name.txt new_name.txt` renames a file.  
- Example: `mv file.txt /destination/folder` moves a file.

## 8. `touch`  
Creates a new, empty file.  
Example: `touch new_file.txt`.

## 9. `cat` (Concatenate and Display Files)  
Displays the content of a file.  
Example: `cat file.txt`.

## 10. `nano` (Text Editor)  
Opens a simple text editor in the terminal.  
Example: `nano file.txt`.

## 11. `sudo` (Superuser Do)  
Runs a command as a superuser or administrator.  
Example: `sudo apt update`.

## 12. `chmod` (Change File Permissions)  
Modifies file permissions.  
Example: `chmod +x script.sh` makes a file executable.

## 13. `chown` (Change File Owner)  
Changes the owner of a file.  
Example: `chown user:group file.txt`.

## 14. `find`  
Searches for files or directories.  
Example: `find / -name file.txt`.

## 15. `grep` (Global Regular Expression Print)  
Searches for patterns within files.  
Example: `grep "keyword" file.txt`.

## 16. `ps` (Process Status)  
Displays currently running processes.  
Use `ps aux` for detailed information.

## 17. `head`  
Displays the first few lines of a file.  
Example: `head -n 5 file.txt` shows the first 5 lines of `file.txt`.

## 18. `tail`  
Displays the last few lines of a file.  
Example: `tail -n 5 file.txt` shows the last 5 lines of `file.txt`.

## 19. `du` (Disk Usage)  
Shows the size of files and directories.  
Example: `du -sh folder`.

## 20. `tar` (Archive Files)  
Archives files into a tarball.  
Example: `tar -cvf archive.tar folder`.

## 21. `zip` and `unzip`  
Compresses or extracts files in `.zip` format.  
- Example: `zip archive.zip file` to compress.  
- Example: `unzip archive.zip` to extract.

## 23. `curl`  
Transfers data from or to a server.  
Example: `curl -O http://example.com/file.zip`.

## 24. `history`  
Displays the list of previously entered commands.

## 25. `man` (Manual Pages)  
Displays the manual for a command.  
Example: `man ls`.

## 26. `ssh` (Secure Shell)  
Connects to a remote system securely.  
Example: `ssh user@remote_host`.

## 28. `apt` (Advanced Package Tool)  
Installs, updates, or removes packages on Debian-based systems.  
Example: `sudo apt install package_name`.

## 29. `kill` and `killall`  
Terminates processes.  
- Example: `kill PID` to terminate by process ID.  
- Example: `killall process_name` to terminate by name.

