# DevOps-Linux-Module

# OverTheWire Bandit - Level 16 Solution

The **Bandit** wargame by OverTheWire teaches basic Linux commands and security. This guide solves **Level 16**, where the goal is to find the password for the next level which can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. 
First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
---

## Objective
Retrieve the password for Bandit Level 17 by finding the password which can by finding out which of the ports speak SSL/TLS.

---

## Steps

### Step 1: Connect to the Server
Use **SSH** to connect to the Bandit Level 16 server:
- **Host**: `bandit.labs.overthewire.org`
- **Username**: `bandit16`
- **Port**: `2220`

Run:
```bash
ssh bandit16@bandit.labs.overthewire.org -p 2220
```

When prompted for a password, enter:
```
kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

---

### Step 2: Ping the ports between 3000 - 3200:
See which ports are open:
```bash
openssl s_client -connect localhost:30001
```
Output:
```
Starting Nmap 7.94SVN ( https://nmap.org ) at 2025-01-26 14:45 UTC
Nmap scan report for localhost (127.0.0.1)
Host is up (0.00019s latency).
Not shown: 996 closed tcp ports (conn-refused)
PORT      STATE SERVICE
31046/tcp open  unknown
31518/tcp open  unknown
31691/tcp open  unknown
31790/tcp open  unknown
31960/tcp open  unknown

Nmap done: 1 IP address (1 host up) scanned in 0.13 seconds

```

### Step 3: Cycle through all the open ports to find which one returns an output when the password is put in :
```
ncat --ssl localhost 31790

kSkvUpMQ7lBYyCM4GBPvCvT1BfWRy0Dx
```

Output:
```
Correct!
-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEAvmOkuifmMg6HL2YPIOjon6iWfbp7c3jx34YkYWqUH57SUdyJ
imZzeyGC0gtZPGujUSxiJSWI/oTqexh+cAMTSMlOJf7+BrJObArnxd9Y7YT2bRPQ
Ja6Lzb558YW3FZl87ORiO+rW4LCDCNd2lUvLE/GL2GWyuKN0K5iCd5TbtJzEkQTu
DSt2mcNn4rhAL+JFr56o4T6z8WWAW18BR6yGrMq7Q/kALHYW3OekePQAzL0VUYbW
JGTi65CxbCnzc/w4+mqQyvmzpWtMAzJTzAzQxNbkR2MBGySxDLrjg0LWN6sK7wNX
x0YVztz/zbIkPjfkU1jHS+9EbVNj+D1XFOJuaQIDAQABAoIBABagpxpM1aoLWfvD
KHcj10nqcoBc4oE11aFYQwik7xfW+24pRNuDE6SFthOar69jp5RlLwD1NhPx3iBl
J9nOM8OJ0VToum43UOS8YxF8WwhXriYGnc1sskbwpXOUDc9uX4+UESzH22P29ovd
d8WErY0gPxun8pbJLmxkAtWNhpMvfe0050vk9TL5wqbu9AlbssgTcCXkMQnPw9nC
YNN6DDP2lbcBrvgT9YCNL6C+ZKufD52yOQ9qOkwFTEQpjtF4uNtJom+asvlpmS8A
vLY9r60wYSvmZhNqBUrj7lyCtXMIu1kkd4w7F77k+DjHoAXyxcUp1DGL51sOmama
+TOWWgECgYEA8JtPxP0GRJ+IQkX262jM3dEIkza8ky5moIwUqYdsx0NxHgRRhORT
8c8hAuRBb2G82so8vUHk/fur85OEfc9TncnCY2crpoqsghifKLxrLgtT+qDpfZnx
SatLdt8GfQ85yA7hnWWJ2MxF3NaeSDm75Lsm+tBbAiyc9P2jGRNtMSkCgYEAypHd
HCctNi/FwjulhttFx/rHYKhLidZDFYeiE/v45bN4yFm8x7R/b0iE7KaszX+Exdvt
SghaTdcG0Knyw1bpJVyusavPzpaJMjdJ6tcFhVAbAjm7enCIvGCSx+X3l5SiWg0A
R57hJglezIiVjv3aGwHwvlZvtszK6zV6oXFAu0ECgYAbjo46T4hyP5tJi93V5HDi
Ttiek7xRVxUl+iU7rWkGAXFpMLFteQEsRr7PJ/lemmEY5eTDAFMLy9FL2m9oQWCg
R8VdwSk8r9FGLS+9aKcV5PI/WEKlwgXinB3OhYimtiG2Cg5JCqIZFHxD6MjEGOiu
L8ktHMPvodBwNsSBULpG0QKBgBAplTfC1HOnWiMGOU3KPwYWt0O6CdTkmJOmL8Ni
blh9elyZ9FsGxsgtRBXRsqXuz7wtsQAgLHxbdLq/ZJQ7YfzOKU4ZxEnabvXnvWkU
YOdjHdSOoKvDQNWu6ucyLRAWFuISeXw9a/9p7ftpxm0TSgyvmfLF2MIAEwyzRqaM
77pBAoGAMmjmIJdjp+Ez8duyn3ieo36yrttF5NSsJLAbxFpdlc1gvtGCWW+9Cq0b
dxviW8+TFVEBl1O4f7HVm6EpTscdDxU+bCXWkfjuRb7Dy9GOtt9JPsX8MBTakzh3
vBgsyi/sN3RqRBcGU40fOoZyfAMT8s1m/uYv52O6IgeuZ/ujbjY=
-----END RSA PRIVATE KEY-----
```

---

### Step 4: Create a temporary directory:
```bash
mktemp -d
```
Output:
```
/tmp/tmp.aIcimP0ooL

```
### Step 5: Navigate into the temporary directory:
See which ports are open:
```bash
cd /tmp/tmp.aIcimP0ooL
```

### Step 6: Create a file for the RSA Private Key to be put in:
```bash
nano rsaprivkey
```

### Step 7: Change the access so the bandit16 owner is the only one with access:
```bash
chmod 700 rsaprivkey
```

### Step 8: List the permissions to check:
```bash
ls -l
```
Output:
```
-rwx------ 1 bandit16 bandit16 1675 Jan 26 15:00 rsaprivkey

```
### Step 9: Login via the private key:
```bash
ssh -i rsaprivkey  bandit17@bandit.labs.overthewire.org -p 2220
```

### Step 10: Need to find the password otherwise would have to login via bandit16 to go to bandit17 level:
See which ports are open:
```bash
cat /etc/bandit_pass/bandit17
```
Output:
```
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD

```


### Step 11: Document the Password
Password for **Level 16**:
```
EReVavePLFHtFlFsjn3hyzMlvSuSAcRD
```

You will need to use this password to log in to the next level.

---

## Key Learnings
### 1. **Understanding SSL/TLS encryption**
SSL/TLS Encryption in Linux is used to secure communication over networks by encrypting data between a client and a server. In the task i utulised ncat --ssl to test the available open ports to see which ones had ssl/tls encryption enabled.


### 2. **Basic Linux Commands**
- `nmap`: Network exploration tool and security / port scanner.
- `ncat`: Concatenate and redirect sockets.
- `chmod`: chmod - change file mode bits.


---
