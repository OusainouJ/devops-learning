# DevOps-Linux-Module

# OverTheWire Bandit - Level 0 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 0**, where the goal is to retrieve the password for the next level stored in a file named `readme`.

---

## Objective
Retrieve the password for Bandit Level 1 by finding and reading the `readme` file on the Bandit Level 0 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 0 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit0`
- **Port**: `2220`

Run:
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
bandit0
```

---

### Step 2: List all Files
List all fils:
```bash
find ~
```

Output:
```
/home/bandit0
/home/bandit0/readme
/home/bandit0/.profile
/home/bandit0/.bashrc
/home/bandit0/.bash_logout
```

---

### Step 3: Read the File
Display the contents of the `readme` file:
```bash
cat /home/bandit0/readme
```

Output:
```
The password you are looking for is: ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

---

### Step 4: Document the Password
Password for **Level 1**:
```
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Using SSH**
SSH is an abbreviation for Secure Shell. It is used to securley connect remotely to servers over a network. It is a key skill for all types of developers and administrators to know how to use.

### 2. **Basic Linux Commands**
- `find ~`: Searches for files and directories in the home directory 
- `cat`: Displays file contents.

---
