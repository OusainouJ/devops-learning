# What is Docker?  
Docker is an open-source platform that allows developers to build, package, and deploy applications in lightweight, portable containers. It simplifies software deployment by ensuring consistency across different environments. 

---

# What is a Docker Container?  
A **Docker container** is a lightweight executable unit that includes an application and all its dependencies which can include libraries, config files etc. Containers are isolated from each other and the host system but share the host OS kernel which makes them more efficient than virtual machines.  

---

## What is a Dockerfile?  
A **Dockerfile** is a script that defines how a Docker container should be built. It contains a set of instructions to install dependencies, configure environments, copy application code, and specify how the container should run.  

---

## Multi-Container Applications (Microservices)  
Modern applications often consist of multiple services working together, rather than a single big service. For example, a web app might need:  
- A **frontend** (user interface).  
- A **backend** (logic and processing).  
- A **database** (storage).

Instead of running everything in one large container, Docker allows each service to run in its **own container**. These containers can communicate with each other while remaining separate, making it easier to update, scale, or replace parts of the system.  

To manage multiple containers efficiently, **Docker Compose** is used. It allows you to define all containers and their connections in a simple configuration file, so everything runs with a single command.  
