# AWS Application Load Balanacer and VPC Networking Labs

## Overview
This repository contains step-by-step guides for two AWS networking assignments, covering **Application Load Balancer (ALB) deployment** and **VPC network setup**. These assignments demonstrate best practices for configuring AWS networking components securely and efficiently.

---

## **1️⃣ AWS Networking Assignment: Application Load Balancer Lab**
### **Objective**
- Deploy an **Application Load Balancer (ALB)** with two EC2 instances behind it.
- Configure **Security Groups (SGs)** so that:
  - **Only the ALB** can access the EC2 instances.
  - **Direct access to EC2 instances** is restricted.
- Verify the setup by accessing the ALB's public DNS and ensuring traffic is load-balanced.

### **Key Components**
✅ **Application Load Balancer (ALB)**  
✅ **Target Group & Health Checks**  
✅ **Security Group Restrictions**  
✅ **EC2 Instances with Web Server**  

---

## **2️⃣ AWS Networking Assignment: VPC and Network Setup**
### **Objective**
- Create a **custom VPC** with **public and private subnets**.
- Configure internet access using:
  - **Internet Gateway (IGW)** for public instances.
  - **NAT Gateway (NGW)** for private instances.
- Deploy EC2 instances and ensure **proper network segmentation**.

### **Key Components**
✅ **Custom VPC** with CIDR block  
✅ **Public & Private Subnets**  
✅ **Route Tables & Security Groups**  
✅ **Internet & NAT Gateway Configuration**  
✅ **EC2 Deployment & Connectivity Validation**  



