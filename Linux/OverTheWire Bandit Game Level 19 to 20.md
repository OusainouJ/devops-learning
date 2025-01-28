# DevOps-Linux-Module

# OverTheWire Bandit - Level 19 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 19**, where the goal is to find the password for the next level which 
can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
---

## Objective
Retrieve the password for Bandit Level 20 by finding the password which can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 19 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit19`
- **Port**: `2220`

Run:
```bash
ssh bandit9@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
cGWpMaKXVwDUNgPAVJbWYuGHVn9zl3j8
```

### Step 2: Run ls -la to check permissions for bandit20-do:
```bash
 ls -la
```

Output:
```
drwxr-xr-x  2 root     root      4096 Sep 19 07:08 .
drwxr-xr-x 70 root     root      4096 Sep 19 07:09 ..
-rwsr-x---  1 bandit20 bandit19 14880 Sep 19 07:08 bandit20-do
-rw-r--r--  1 root     root       220 Mar 31  2024 .bash_logout
-rw-r--r--  1 root     root      3771 Mar 31  2024 .bashrc
-rw-r--r--  1 root     root       807 Mar 31  2024 .profile
```

---

### Step 3: Run the bandit20-do file to get the password:
```bash
 ./bandit20-do cat /etc/bandit_pass/bandit20
```

Output:
```
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
```

---

### Step 3: Document the Password
Password for **Leve 19**:
```
0qXahG8ZjOVMN9Ghs7iOWsCfZyXOUbYO
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **setuid**
`Setuid` is a permission in linux which allows the user to execute the files of a permission of another user. In the bandi19 task when using the `ls -la` command you can see the owner is bandit20. 
However with setuid used, it allows me as bandit19 user to bandit20-do file. 
### 2. **Basic Linux Commands**
- `cat`: prints output of file.

---
