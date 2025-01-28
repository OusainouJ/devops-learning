# DevOps-Linux-Module

# OverTheWire Bandit - Level 6 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 6**, where the goal is to find the password for the next level is stored somewhere on the server and has all of the following properties:

`owned by user bandit7`
`owned by group bandit6`
`33 bytes in size`

---

## Objective
Retrieve the password for Bandit Level 7 by finding the file with the specific properties and reading the file on the Bandit Level 6 server.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 6 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit6`
- **Port**: `2220`

Run:
```bash
ssh bandit6@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

---

### Step 2: Find the file with the specific properties:
Show the file which is owned by user bandit7, owned by group bandit6 and 33 byte size:
```bash
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

Output:
```
/var/lib/dpkg/info/bandit7.password
```

---

### Step 3: Read the file which has been found:
Reading the file:
```bash
cat /var/lib/dpkg/info/bandit7.password
```

Output:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

---

### Step 4: Document the Password
Password for **Level 7**:
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Redirectng errors with redirection**
Understanding stdout,stdin, stderr and how to deal with them is crucial. In this paticular task i had to redirect the stderr into the /dev/null file which essentially discards whatever error is being sent.


### 2. **Basic Linux Commands**
- `find`: Displays file and directories.
- `-user`: Specifies the user who owns the file.
- `-group`: Specifies the group which owns the file.
- `-size 33c`: Specifies the size of the file as `33`, `c` specifies it is bytes.
- `2>/dev/null`: The file descriptor for stderr is `2`, in this case we are taking the standard error utilising `>` to redirect into the `/dev/null` file
- `cat`: Display the contents of the file.

---
