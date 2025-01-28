# DevOps-Linux-Module

# OverTheWire Bandit - Level 10 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 10**, where the goal is to find the password for the next level which is stored in the file data.txt, which contains base64 encoded data.
---

## Objective
Retrieve the password for Bandit Level 11 by finding the password within the data.txt file where the password contains base 64 encoded data.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 10 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit10`
- **Port**: `2220`

Run:
```bash
ssh bandit10@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

---

### Step 2: Decode data.txt file:
Utilise the base64 command to decode the data.txt file and extract the password:
```bash
base64 -d data.txt
```

Output:
```
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

---

### Step 3: Document the Password
Password for **Level 11**:
```
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Utilising the base64 command**
The `base64` command is utilised for both encoding and decoding data and printing it out to a standard output. 


### 2. **Basic Linux Commands**
- `base64`: base64 encode/decode data and print to standard output.
---
