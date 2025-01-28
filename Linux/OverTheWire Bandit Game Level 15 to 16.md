# DevOps-Linux-Module

# OverTheWire Bandit - Level 15 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 15**, where the goal is to find the password for the next level which can be retrieved by 
submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.
---

## Objective
Retrieve the password for Bandit Level 16 by finding the password which can by obtained submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 15 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit15`
- **Port**: `2220`

Run:
```bash
ssh bandit15@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

---

### Step 2: Connect to the server:
Utilise openssl to connect to the server:
```bash
openssl s_client -connect localhost:30001
```

### Step 3: Enter the password for current level:
```
8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo
```

Output:
```
Correct!
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx

closed
```

---

### Step 4: Document the Password
Password for **Level 16**:
```
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding SSL/TLS encryption**
`openssl` is used for implementing secure communication over computer networks utilising SSL and TLS via cryptographic algorithms. When you visit sites such as GitHub it uses SL/TLS certificates, which are often generated and managed using OpenSSL.

### 2. **Basic Linux Commands**
- `openssl`: Oused for implementing secure communication over computer networks.

---
