# DevOps-Linux-Module

# OverTheWire Bandit - Level 5 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 5**, where the goal is to retrieve the password for the next level which is stored in a file somewhere under the inhere directory and has all of the following properties:
---
`human-readable`
`1033 bytes in size`
`not executable`

---

## Objective
Retrieve the password for Bandit Level 6 by finding the file with the specific properties and reading the file on the Bandit Level 5 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 5 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit5`
- **Port**: `2220`

Run:
```bash
ssh bandit5@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

---

### Step 2: Display available directories:
Display avilable directories:
```bash
ls
```

Output:
```
inhere
```

### Step 3: Find the file with the specific properties:
Show the file which is human readable, not exectuable and 1033 byte size:
```bash
find * -type f ! -executable -size 1033c
```

Output:
```
inhere/maybehere07/.file2
```

---

### Step 4: Read the file which has been found:
Reading the file:
```bash
cat inhere/maybehere07/.file2
```

Output:
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

---

### Step 5: Document the Password
Password for **Level 6**:
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Utilising the find command in combination with other criteria is a powerful command**
When you utilise the find command specifiying certain criteria it becomes an even more powerful command. In this paticular level my use of the commands below brought back the relevant file. However, i could have drilled down further utilising the `grep` command to further specifiy i am looking for a human readable file as `-type f`  looks for files which may or may not be rconsidered human readable. If i was to do this task again i would input the following command to be even more specific: `find * -type f ! -executable -size 1033c -exec file {} \; | grep ASCII`


### 2. **Basic Linux Commands**
- `*`: Expands the search of `find` here to include all files and directories .
- `ls`: Displays files and directories.
- `find`: Displays file and directories.
- `-type f`: Only include regular files.
- `! -exectuable`: The exclamation mark negates the file being executable.
- `-size 1033c`: Specifies the size of the file as `1033`, `c` specifies it is bytes.
- `-exec file {} \;`: `exec` executes the file command and `{}` acts as a placeholder for each file found. 
- `grep ASCII`: Filters the output of file for files containing `ASCII`.
- `cat`: Display the contents of the file.

---
