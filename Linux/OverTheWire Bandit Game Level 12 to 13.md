# DevOps-Linux-Module

# OverTheWire Bandit - Level 12 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 12**, where the goal is to find the password for the next level which is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed.
---

## Objective
Retrieve the password for Bandit Level 13 by finding the password within the data.txt file where the file is a hexdump of a file that has been repeatedly compressed.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 12 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit12`
- **Port**: `2220`

Run:
```bash
ssh bandit12@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4
```

---

### Step 2: Create a temporary directory:
```bash
mktemp -d
```

Output:
```
/tmp/tmp.6oMPfLoziK
```

### Step 3: Change directory to temp file, copy data.txt into current directory & rename data.txt:

```bash
cd /tmp/tmp.6oMPfLoziK
cp ~/data.txt .
mv data.txt newdatafile
```

### Step 4: Convert newdatafile to binary and output to hexfile:
```bash
xxd -r newdatafile > hexfile
```

### Step 5: Check filetype of hexfile:
```bash
file hexfile
```

Output:
```
hexfile: gzip compressed data, was "data2.bin", last modified: Thu Sep 19 07:08:15 2024, max compression, from Unix, original size modulo 2^32 574
```

### Step 6: Change name to correct .gz extension:
```bash
mv hexfile hexfile.gz

```

### Step 7: Decompress hexfile.gz:
```bash
gzip -d hexfile.gz
```
### Step 8: Check filetype of hexfile:
```bash
file hexfile
```

Output:
```
hexfile: bzip2 compressed data, block size = 900k
```

### Step 9: Change file extension to add .bz2:
```bash
mv hexfile hexfile.bz2
```

### Step 10: Decompress hexfile.bz2:
```bash
bzip2 -d hexfile.bz2

```

### Step 11: Check filetype of hexfile:
```bash
file hexfile
```

Output:
```
hexfile: gzip compressed data, was "data4.bin", last modified: Thu Sep 19 07:08:15 2024, max compression, from Unix, original size modulo 2^32 20480
```

### Step 12: Change name to correct .gz extension:
```bash
mv hexfile hexfile.gz
```

### Step 13: Decompress hexfile.gz:
```bash
gzip -d hexfile.gz
```

### Step 14: Check filetype of hexfile:
```bash
file hexfile
```

Output:
```
hexfile: POSIX tar archive (GNU)
```

### Step 15: Change name to correct .tar extension:
```bash
mv hexfile hexfile.tar
```

### Step 16: Extract the tar archive:
```bash
tar -xf hexfile.tar
```

### Step 17: list files in the current directory:
```bash
ls
```
Output:
```
data5.bin  hexfile.tar  newdatafile
```

### Step 18: Change name to for data5.bin to .tar extension:
```bash
mv data5.bin data5.bin.tar
```

### Step 19: Extract the tar archive:
```bash
tar -xf data5.bin.tar
```

### Step 20: list files:
```bash
ls
```
Output:
```
data5.bin.tar  data6.bin  hexfile.tar  newdatafile
```

### Step 21: Check filetype of data6.bin:
```bash
file data6.bin
```

Output:
```
data6.bin: bzip2 compressed data, block size = 900k
```

### Step 22: Change file extension to add .bz2:
```bash
mv data6.bin data6.bin.bz2
```

### Step 23: Decompress data6.bin.bz2:
```bash
bzip2 -d data6.bin.bz2

```
### Step 24: Change file extension to add .tar:
```bash
mv data6.bin data6.bin.tar
```

### Step 25: Decompress data6.bin.tar:
```bash
tar -xf data6.bin.tar

```
### Step 26: list files:
```bash
ls
```
Output:
```
data5.bin.tar  data6.bin.tar  data8.bin  hexfile.tar  newdatafile
```

### Step 27: Check filetype of data8.bin:
```bash
file data8.bin
```

Output:
```
data8.bin: gzip compressed data, was "data9.bin", last modified: Thu Sep 19 07:08:15 2024, max compression, from Unix, original size modulo 2^32 49
```

### Step 28: Change file extension to add .gz:
```bash
mv data8.bin data8.bin.gz
```

### Step 29: Decompress data8.bin.gz:
```bash
gzip -d data8.bin.gz

```
### Step 30: Check filetype of data8.bin:
```bash
file data8.bin
```

Output:
```
data8.bin: ASCII text
```

### Step 31: Read data8.bin:
```bash
cat data8.bin
```

Output:
```
The password is FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```

---

### Step 32: Document the Password
Password for **Level 13**:
```
FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding different compressions**
Three types of compressions were utilised in this task. `gzip`, `bzip` and `tar`. gzip and bzip are used to compress files whilst tar is used to archive files. 


### 2. **Basic Linux Commands**
- `gzip`: compress or expand files.
- `bzip`: compress or expand files.
- `-d`: in the task this was used to decompress files.
- `tar`: used to archive files.
- `xf`: extract files from a tar archived file.
- `ls`: list files/directories.
- `mv`: used to either rename or move files/directories.
- `file`: list the file type.
---
