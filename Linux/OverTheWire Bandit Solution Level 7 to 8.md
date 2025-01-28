# DevOps-Linux-Module

# OverTheWire Bandit - Level 7 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 7**, where the goal is to find the password for the next level which is stored is stored in the file data.txt next to the word `millionth`

---

## Objective
Retrieve the password for Bandit Level 8 by finding the file with the specific properties and reading the file on the Bandit Level 7 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 7 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit7`
- **Port**: `2220`

Run:
```bash
ssh bandit7@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

---

### Step 2: Find the file next to the word millionth:
Extract the password which is next to the word millionth:
```bash
grep "millionth" data.txt
```

Output:
```
millionth	dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

---

### Step 3: Document the Password
Password for **Level 8**:
```
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Utilising the grep command**
The grep command is a powerful command which allows the user to print lines that matches specific patterns. In this case we were looking for a specific pattern in a word called millionth.


### 2. **Basic Linux Commands**
- `grep`: Print lines that match a specific pattern.
---
