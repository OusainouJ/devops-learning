# DevOps-Linux-Module

# OverTheWire Bandit - Level 1 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 1**, where the goal is to retrieve the password or the next level is stored in a file called `-` located in the home directory.

---

## Objective
Retrieve the password for Bandit Level 2 by finding and reading the `-` file on the Bandit Level 1 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 0 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit1`
- **Port**: `2220`

Run:
```bash
ssh bandit1@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

---

### Step 2: List all Files
List all files:
```bash
find ~
```

Output:
```
/home/bandit1
/home/bandit1/.profile
/home/bandit1/.bashrc
/home/bandit1/.bash_logout
/home/bandit1/-
```

---

### Step 3: Read the File
Display the contents of the `-` file:
```bash
cat /home/bandit1/-
```

Output:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

---

### Step 4: Document the Password
Password for **Level 2**:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Multiple ways to complete this task**
There are multiple ways in which this task could be completed. I used the `find ~` command and used `cat` to read the absolute path. Although this task could also be completed by using `ls` which will return the file `-` and using redirection in combination with cat to read the file `cat <-`.

### 2. **Basic Linux Commands**
- `find ~`: Searches for files and directories in the home directory 
- `cat`: Displays file contents.

---
