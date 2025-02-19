
# Networking

Networking plays a critical role in DevOps as it enables communication between various components within the pipeline such as development environments, staging environments and building infrastructure. Including networking ensures that various microservices, containers and servers can interact effectively without downtime or security breaches.

## Basic Networking Concepts

### 1. **TCP/IP (Transmission Control Protocol/Internet Protocol)**

TCP/IP is a set of communication protocols that enables devices to connect and communicate over a network, such as the Internet. It is the fundamental protocol suite used for network communication.

- **Transmission Control Protocol (TCP)**: TCP ensures reliable, ordered, and error-checked delivery of data between applications. It is connection-oriented, meaning a connection is established before data transmission begins.
  
- **Internet Protocol (IP)**: IP handles addressing and routing of packets of data between devices on a network. It provides unique IP addresses to devices to ensure proper data delivery.

### 2. **Packets**

Packets are small chunks of data that are transmitted across a network. Since large files or messages cannot be sent all at once due to bandwidth limitations, they are broken down into smaller pieces (packets). Each packet contains information about its destination and sequence to help reassemble the message once it reaches its destination.

### 3. **DNS (Domain Name System)**

DNS is a system that translates human-readable domain names (e.g., www.example.com) into IP addresses (e.g., 192.168.1.1). It acts as the phone book of the internet, allowing users to access websites and services using easy-to-remember domain names instead of numerical IP addresses.

### 4. **UDP (User Datagram Protocol)**

UDP is another communication protocol used for transmitting data across a network. Unlike TCP, UDP is connectionless, meaning it doesn't establish a formal connection before sending data. While UDP is faster, it does not guarantee delivery, order, or error correction. It is typically used in applications where speed is critical, such as streaming services or VoIP.

### 5. **TCP Layer - OSI Model**

The OSI (Open Systems Interconnection) Model is a conceptual framework that standardizes the functions of a network into seven layers. The TCP/IP protocol operates within this model to enable communication between devices.

#### Layers of the OSI Model:
1. **Physical Layer**: The hardware and physical transmission medium (cables, radio waves, etc.)
2. **Data Link Layer**: Responsible for error-free transfer of data frames between devices.
3. **Network Layer**: Handles logical addressing (IP) and routing of data across networks.
4. **Transport Layer**: Ensures reliable data transfer (TCP/UDP) and error correction.
5. **Session Layer**: Manages sessions and controls the dialogues between applications.
6. **Presentation Layer**: Translates data between application formats (encryption, compression).
7. **Application Layer**: End-user interactions with applications (HTTP, FTP, etc.)

### 6. **Subnets**

A subnet is a logical division of an IP network. It allows the network to be split into smaller, manageable segments. Subnets help reduce network congestion, improve performance, and enhance security by isolating traffic between different sub-networks.

- **Subnet Mask**: A subnet mask defines the size of the subnet and is used to distinguish the network portion of an IP address from the host portion.
- **CIDR (Classless Inter-Domain Routing)**: CIDR allows for more flexible subnetting by specifying IP address ranges using a notation like `192.168.1.0/24`.

# Networking Troubleshooting Tools: `ping` and `dig`

When diagnosing network issues or troubleshooting DNS problems, tools like `ping` and `dig` are are helpful. Both of these commandsassist in solving connectivity issues, measure network performance etc. 

## `ping` 

`ping` is one of the simplest tools to test network connectivity. It helps verify if a system or server is reachable on a network. 

### Common Use Cases for Troubleshooting with `ping`:
- **Check Connectivity**: To verify if a server or device is reachable.
- **Measure Latency**: To identify network delays or performance bottlenecks.
- **Detect Packet Loss**: To see if packets are being lost during transmission, which could indicate network congestion or hardware issues.

## `dig` 

`dig` is used to query DNS servers for information about domain names and their records. It assists in diagnosing DNS-related issues such as incorrect DNS records or propagation delays.

### Common Use Cases for Troubleshooting with `dig`:
- **Verify DNS Records**: To ensure that a domain's DNS records  such as `A`, `MX`, `CNAME` etc, are configured correctly.
- **Investigate DNS Propagation**: To check if DNS changes have propagated across DNS servers worldwide.

