# DevOps-Linux-Module

# OverTheWire Bandit - Level 11 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 11**, where the goal is to find the password for the next level which is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.
---

## Objective
Retrieve the password for Bandit Level 12 by finding the password within the data.txt file where all the lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 11 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit11`
- **Port**: `2220`

Run:
```bash
ssh bandit11@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

---

### Step 2: Decode data.txt file:
Utilise the tr command in combination with redirection to extract the password:
```bash
tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt
```

Output:
```
The password is 7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```

---

### Step 3: Document the Password
Password for **Level 12**:
```
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding ROT13**
`ROT13` is used to obscure text by moving each letter in the alphabet by 13 places. ROT is not exclusive to 13 you can utilise `ROT` with any number. Although it's key to note that `ROT` is not a secure way to encrypt text. There are also websites such as https://rot13.com/ which assist in deciphering text which had been obscured by `ROT`.
For example if i was to run the command `cat data.txt` it will return an output of `Gur cnffjbeq vf 7k16JArUVv5LxVuJfsSVdbbtaHGlw9D4`. I could put this within https://rot13.com/ and it would return the same output as `tr 'A-Za-z' 'N-ZA-Mn-za-m' < data.txt`.


### 2. **Basic Linux Commands**
- `tr`: translate or delete characters.
- `A-Za-z`: This is specifiying all lower case and upper case letters within the alphabet
- `N-ZA-Mn-za-m`: Shifts each letter in the alphabet by 13 places for both upper case and lower case letters.
---
