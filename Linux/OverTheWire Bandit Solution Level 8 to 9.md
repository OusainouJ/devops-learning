# DevOps-Linux-Module

# OverTheWire Bandit - Level 8 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 8**, where the goal is to find the password for the next level is stored in the file `data.txt` and is the only line of text that occurs only once.

---

## Objective
Retrieve the password for Bandit Level 9 by finding the password in data.txt where the password is on the only line of text that occurs only once.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 8 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit8`
- **Port**: `2220`

Run:
```bash
ssh bandit8@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

---

### Step 2: Find the only line of text that occurs only once:
Sort the data.txt file and display the entry that shows once:
```bash
sort data.txt | uniq -u
```

Output:
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

---

### Step 3: Document the Password
Password for **Level 9**:
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Utilising the sort & uniq command and the pipe command**
The `sort` command is a powerful command which sorts the lines of a file, in combination with the uniq command it works well together. The `sort` command is sorting the `data.txt` by using the `uniq` command in conjunction with the sort command im telling the system to only show the uniqe lines and the `-u` option to display the only lines that have no duplication. The pipe command allowed me to comhine the `sort` and `uniq` command so that the output of `sort` command becomes the input for the `uniq` the next command.


### 2. **Basic Linux Commands**
- `sort`: sort lines of the text file.
- `uniq -u`: removes repeated lines and displays the uniqe lines.
- `|`: takes output from one command and uses it as input for another.
---
