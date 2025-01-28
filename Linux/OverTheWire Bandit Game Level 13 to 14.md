# DevOps-Linux-Module

# OverTheWire Bandit - Level 13 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 13**, where the goal is to find the password for the next level which is is stored in `/etc/bandit_pass/bandit14` and can only be read by user bandit14.
For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. 
 
---

## Objective
Retrieve the password for Bandit Level 14 by finding the password within the `/etc/bandit_pass/bandit14` which can only be read by bandit14.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 13 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit13`
- **Port**: `2220`

Run:
```bash
ssh bandit13@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```

---

### Step 2: ls:
List files in current directory:
```bash
ls
```

Output:
```
sshkey.private
```

### Step 3: Use ssh.privatekey to login to bandit14:
List files in current directory:
```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

### Step 4: Read the file for bandit14 password:
List files in current directory:
```bash
cat /etc/bandit_pass/bandit14
```

Output:
```
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

---

### Step 5: Document the Password
Password for **Level 14**:
```
MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding ssh private keys**
`ssh` private keys are a way in which you can login to another computer without using a password. This is usually safely stored and should not be shared with anyone. Usually the ssh private key is found in /home/username/.ssh/id_rsa in linux systems.

### 2. **Basic Linux Commands**
- `ls`: List files/directories.
- `ssh`: OpenSSH remote login client.
- `-i`: Selects the file from where the private key is read from
- `cat`: Reads the file.
---
