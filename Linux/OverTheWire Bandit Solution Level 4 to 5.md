# DevOps-Linux-Module

# OverTheWire Bandit - Level 4 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 4**, where the goal is to retrieve the password for the next level which is stored in the only human-readable file in the `inhere` directory.
---

## Objective
Retrieve the password for Bandit Level 5 by finding the `inhere` directory and reading the file on the Bandit Level 4 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 4 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit4`
- **Port**: `2220`

Run:
```bash
ssh bandit4@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

---

### Step 2: Navigate to inhere directory:
Navigation to inhere directory:
```bash
cd inhere
```

### Step 3: Show the contents of the file:
Show the contents of the file:
```bash
ls 
```

Output:
```
-file00  -file01  -file02  -file03  -file04  -file05  -file06  -file07  -file08  -file09
```

---

### Step 4: Show all file types:
Show the file types for each file:
```bash
file ./* 
```

Output:
```
./-file00: data
./-file01: data
./-file02: data
./-file03: data
./-file04: data
./-file05: data
./-file06: data
./-file07: ASCII text
./-file08: data
./-file09: data
```

---

### Step 5: Read the File:
Display the contents of the `-file07` file:
```bash
 cat ./-file07
```

Output:
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

---

### Step 6: Document the Password
Password for **Level 5**:
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Finding file types**
Utilising the file command is a useful way to display file types. 

### 2. **Basic Linux Commands**
- `cd`: Changes directory.
- `ls`: Displays files and directories.
- `file`: Displays file types. 
- `cat`: Display the contents of the file.

---
