# DevOps-Linux-Module

# OverTheWire Bandit - Level 3 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 3**, where the goal is to retrieve the password stored stored in a hidden file in the `inhere` directory. 
---

## Objective
Retrieve the password for Bandit Level 4 by finding the `inhere` directory and reading the file on the Bandit Level 3 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 3 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit3`
- **Port**: `2220`

Run:
```bash
ssh bandit3@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

---

### Step 2: Navigate to inhere directory:
Navigation to inhere directory:
```bash
cd inhere
```

### Step 3: List hidden files:
Show all files including hidden:
```bash
ls -a
```

Output:
```
...Hiding-From-You
```

---

### Step 4: Read the File
Display the contents of the `...Hiding-From-You` file:
```bash
cat "...Hiding-From-You"
```

Output:
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

---

### Step 4: Document the Password
Password for **Level 4**:
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Dealing with hidden files**
To show all files and directories you can utilise the  `ls -a` command. Commonly files which are hidden utilising the `.` at the beginning of a directory/file are configuration or system files.

### 2. **Basic Linux Commands**
- `cd`: Changes directory.
- `ls -a`: Displays all hidden files/directories.
- `cat`: Display the contents of the file.

---
