# DevOps-Linux-Module

# OverTheWire Bandit - Level 17 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 17**, where the goal is to find the password for the next level which is 
in passwords.new and is the only line that has been changed between passwords.old and passwords.new
---

## Objective
Retrieve the password for Bandit Level 18 by finding the password which can by finding the one line thats been changed between passwords.old and passwords.new.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 17 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit17`
- **Port**: `2220`

Run:
```bash
ssh bandit17@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
```

---

### Step 2: Find the line thats changed:
Utilise diff command:
```bash
 diff passwords.old passwords.new
```

Output:
```
42c42
< ktfgBvpMzWKR5ENj26IbLGSblgUG9CzB
---
> x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```

---

### Step 3: Document the Password
Password for **Level 18**:
```
x2gLTTjFwMOhQ8oWNbMN362QKxfRqGlO
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Use of diff command**
`diff` is used to compare files line by line. In this task it displayed what the password was in passwords.old and what its like in passwords.new.
### 2. **Basic Linux Commands**
- `diff`: Compare files line by line

---
