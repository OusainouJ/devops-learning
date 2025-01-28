# DevOps-Linux-Module

# OverTheWire Bandit - Level 18 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 18**, where the goal is to find the password for the next level which is stored in a file readme in the homedirectory. 
Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
---

## Objective
Retrieve the password for Bandit Level 19 by finding the password which can be found in the readme file.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 18 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit8`
- **Port**: `2220`

Run:
```bash
ssh bandit8@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
```

### Step 2: Login and quickly cat before .bashrc kicks me out:
```bash
 ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```

Output:
```
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
```

---

### Step 3: Document the Password
Password for **Leve 19**:
```
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **.bashrc can be configured to log out straight away.**
The .bashrc was configured to log out straight away. The .bashrc is the shell startup script which preapres the command line interface. Whilst it is going through that preperation, i was able to utilise the cat
command to read the file before it is setup.
### 2. **Basic Linux Commands**
- `cat`: prints output of file.
- `ssh`: Open remote client login.

---
