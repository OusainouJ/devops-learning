# DevOps-Linux-Module

# OverTheWire Bandit - Level 14 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 14**, where the goal is to find the password for the next level which can be retrieved by submitting the password of the current level to port 30000 on localhost.
---

## Objective
Retrieve the password for Bandit Level 15 by finding the password which can be obtained submitting the password of the current level to port 30000 on localhost.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 14 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit14`
- **Port**: `2220`

Run:
```bash
ssh bandit14@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

---

### Step 2: Submit the password:
Utilise echo and nc to submit the password:
```bash
echo MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS | nc localhost 30000
```

Output:
```
Correct!
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

---

### Step 3: Document the Password
Password for **Level 15**:
```
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding nc**
`nc` is used to send and receive data over the network. In this task it was used to send the password to the localhost on port 30000.

### 2. **Basic Linux Commands**
- `echo`: Outputs the line of text.
- `nc`: Send and receive data over the network.
- `localhost`: hostname which refers to my own computer.
---
