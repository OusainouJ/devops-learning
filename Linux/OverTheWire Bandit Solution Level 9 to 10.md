# DevOps-Linux-Module

# OverTheWire Bandit - Level 9 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 9**, where the goal is to find the password for the next level which is stored in the file `data.txt` in one of the few human-readable strings, preceded by several `=` characters.

---

## Objective
Retrieve the password for Bandit Level 10 by finding the password within the data.txt file where the password is next to one of the few human-readable strings, preceded by several `=` characters.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 9 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit9`
- **Port**: `2220`

Run:
```bash
ssh bandit9@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

---

### Step 2: Find the file next to one of the few human-readable strings, preceded by several `=` characters:
Extract printable text from binary or non-text data files and search for a pattern in the text:
```bash
strings data.txt | grep "=="
```

Output:
```
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

---

### Step 3: Document the Password
Password for **Level 10**:
```
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Utilising the strings and grep command**
The `strings` command is utilised for extracting data from binary or non-text data files. In combination with the pipe and with the `grep` it further filters out the file to find a sequence with atleast two `=` as the task states preceded by several `=` characters.


### 2. **Basic Linux Commands**
- `strings`: print the sequence of printable characters in files.
- `grep`: print lines that match patterns.
- `|`: takes output from one command and uses it as input for another.
---
