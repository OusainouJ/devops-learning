# DevOps-Linux-Module

# OverTheWire Bandit - Level 2 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 2**, where the goal is to retrieve the password stored in a file called `spaces in this filename` located in the home directory.

---

## Objective
Retrieve the password for Bandit Level 3 by finding and reading the `spaces in this filename` file on the Bandit Level 2 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 2 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit2`
- **Port**: `2220`

Run:
```bash
ssh bandit2@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

---

### Step 2: List all Files
List all fils:
```bash
find ~
```

Output:
```
/home/bandit2
/home/bandit2/.profile
/home/bandit2/.bashrc
/home/bandit2/.bash_logout
/home/bandit2/spaces in this filename
```

---

### Step 3: Read the File
Display the contents of the `spaces in this filename` file:
```bash
cat "spaces in this filename"
```

Output:
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

---

### Step 4: Document the Password
Password for **Level 3**:
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Dealing with files with spaces**
Similar to Level 1 there are multipe ways this can be dealt with. I utilised `cat "spaces in this filename"` but could have also utilised `cat spaces\ in\ this\ filename"`. Both of which would have provided the same outcome.

### 2. **Basic Linux Commands**
- `find ~`: Searches for files and directories in the home directory.
- `cat`: Displays file contents.
- `""`: Speech marks/single quotations to deal with strings tht include spaces.

---
