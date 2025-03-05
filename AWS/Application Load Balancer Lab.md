
# AWS Networking Assignment: Application Load Balancer Lab

## Objective
Deploy an **Application Load Balancer (ALB)** with two **EC2 instances** behind it. Ensure **Security Group (SG)** configurations allow only **ALB access** to EC2 instances while preventing direct access.

---

## **1. Launch EC2 Instances**

### **Step 1: Navigate to EC2 and Launch Instances**
1. Go to **EC2 Dashboard** → Click **Launch Instances**.
2. Select **Ubuntu** as the AMI.

### **Step 2: Install Nginx on the First EC2 Instance**
- In **Additional Settings**, input the following **User Data script**:

```bash
#!/bin/bash
# Update and Install Nginx
apt update -y && apt install -y nginx

# Server A Details
SERVER_NAME="Server A"
COLOR="blue"

# Remove Default Page
rm -f /var/www/html/index.nginx-debian.html

# Create a Simple Web Page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>$SERVER_NAME</title>
    <style>
        body { text-align: center; font-family: Arial, sans-serif; background-color: $COLOR; color: white; }
        h1 { margin-top: 20%; }
    </style>
</head>
<body>
    <h1>Welcome to $SERVER_NAME</h1>
</body>
</html>
EOF
```

### **Step 3: Configure VPC**
- AWS will **automatically assign** a **VPC** to this instance.
- Example: `vpc-0e7ce0734067c1a4c` (your VPC may vary).

### **Step 4: Launch the Second EC2 Instance**
1. Repeat **Steps 1-3** for the **second EC2 instance**.
2. Ensure both EC2 instances are in **the same VPC and availability zone**.

---

## **2. Create an Application Load Balancer**

### **Step 1: Navigate to Load Balancers in EC2**
1. Click **Create Application Load Balancer**.
2. Input a **name** for the ALB.
3. Ensure **IPv4 addressing** is enabled.
4. Assign the **same VPC** used by the EC2 instances.
5. Select the **Availability Zone** where your EC2 instances are located.

### **Step 2: Configure Security Group for ALB**
1. Select an **existing Security Group** or create a new one.
2. Allow **HTTP (80) and HTTPS (443) inbound traffic** from the internet.

### **Step 3: Configure Listeners & Routing**
1. Ensure **HTTP (port 80) is set up**.
2. Create a **Target Group**:
   - **Choose Target Type:** Instances
   - **Target Group Name:** Enter a name
   - **IP Address Type:** IPv4
   - **VPC:** Select the same VPC as your EC2 instances
   - **Protocol Version:** HTTP/1
   - **Health Check Path:** `/index.html`
3. Assign **EC2 instances** to the **Target Group**.
4. Set the **Target Group as Default Action** and **Create Load Balancer**.

---

## **3. Configure Security Groups**

### **Security Group for ALB**
1. Navigate to **Security Groups** in EC2.
2. Click **Create Security Group**.
3. Input a **name** and select the **VPC** of the ALB.
4. Configure **Inbound Rules**:
   - Allow **HTTP (80) from all (IPv4 & IPv6)**
   - Allow **HTTPS (443) from all (IPv4 & IPv6)**
5. Click **Create Security Group**.

### **Security Group for EC2 Instances**
1. Navigate to **Security Groups**.
2. Click **Create Security Group**.
3. Input a **name** and select the **VPC** of the EC2 instances.
4. Configure **Inbound Rules**:
   - Allow **HTTP (80) from ALB Security Group**
   - Allow **HTTPS (443) from ALB Security Group**
5. Click **Create Security Group**.

---

## **4. Implement Auto Scaling Group (ASG) for EC2 Instances**

### **Step 1: Create a Launch Template**
1. Navigate to **EC2 Instances** → Select one of the existing EC2 instances.
2. Click **Create Launch Template** (to be used for ASG).

### **Step 2: Create an Auto Scaling Group (ASG)**
1. Navigate to **Auto Scaling Groups**.
2. Click **Create Auto Scaling Group**.
3. Input a **name** and select the **Launch Template** created earlier.
4. Select the **VPC and Availability Zone**.
5. Choose **Balanced Best Effort** to distribute instances across zones.
6. Attach the **previously created ALB**.
7. Enable **ELB Health Checks**.
8. Set **minimum and maximum instance count**.
9. Click **Create ASG**.

---

## **5. Configure HTTPS Listener and SSL Certificate**

### **Step 1: Request SSL Certificate in AWS Certificate Manager (ACM)**
1. Navigate to **AWS Certificate Manager (ACM)**.
2. Click **Request a Certificate** and then select **Public Certificate**.
3. Enter your **domain name**.
4. Choose **DNS Validation** (Recommended) or **Email Validation**.
5. Click **Request** If using DNS validation, update **CNAME records** in your domain's DNS settings.
6. Wait for AWS to validate and issue the certificate.

### **Step 2: Attach SSL Certificate to ALB**
1. Navigate to **Load Balancers** and select your ALB.
2. Go to the **Listeners** tab and click **Add Listener**.
3. Select **Protocol: HTTPS (Port 443)**.
4. Choose **SSL Certificate**:
   - Select **ACM Certificate** if requested in ACM.
5. Click **Save Changes**.

---

## **Conclusion**
✅ You have successfully deployed an **Application Load Balancer (ALB) with EC2 instances**, set up **Auto Scaling**, and configured **HTTPS with SSL certificates**. You should be able to navigate to your domain either via http or https and you should see two instances running at all times with Server A and Server B as per the screenshot.



