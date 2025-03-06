# AWS Networking Assignment: VPC and Network Setup

## Objective
Create a custom VPC with public and private subnets, configure internet access using an Internet Gateway (IGW) and a NAT Gateway (NGW), and deploy EC2 instances with proper network segmentation.

---

## Step 1: Create a VPC
1. Navigate to **VPC** in the AWS Management Console and select **Create VPC**.
2. Choose **VPC & more** to create subnets and route tables all at once.
3. Set the **IPv4 CIDR block** to `10.0.0.0/16`.
4. Select **1 Availability Zone (AZ)**, **1 Public Subnet**, and **1 Private Subnet**.
5. Choose **1 NAT Gateway** and **No S3 Gateway** for now.
6. Click **Create VPC**.

You have now created a VPC with a private and public subnet, along with a NAT Gateway and IGW.

![Server](https://raw.githubusercontent.com/OusainouJ/DevoPS-Learning/main/AWS/images/vpc.png)

---

## Step 2: Configure Internet Access
We need to verify and configure the correct routing for the IGW (public internet access) and NGW (private outbound traffic).

1. Navigate to the **VPC** that was just created.
2. Select **Resource Map**.
3. There should already be route tables for both public and private subnets.
4. Select the route table linked to the **public subnet** and ensure it is associated with the **IGW** with a destination of `0.0.0.0/0`. This allows EC2 instances in the public subnet to access the internet.
5. Open the route table for the **private subnet**.
6. Verify that the private subnet's route table is linked to the **NGW**, with a destination of `0.0.0.0/0`. This allows the private subnet to reach the internet while blocking inbound traffic.

![Server](https://raw.githubusercontent.com/OusainouJ/DevoPS-Learning/main/AWS/images/public.png)
![Server](https://raw.githubusercontent.com/OusainouJ/DevoPS-Learning/main/AWS/images/private.png)

---

## Step 3: Deploy EC2 Instances
We will create two EC2 instances:
- One in the **public subnet** (with internet access)
- One in the **private subnet** (with no internet access)

### Public Subnet EC2 Instance
1. Use the **launch template** from the first lab to create an EC2 instance.
2. Under **Network settings**, select the newly created **VPC** and **Public Subnet**.
3. Enable **Auto-assign Public IP**.

### Private Subnet EC2 Instance
1. Use the **launch template** again to create another EC2 instance.
2. Under **Network settings**, select the same **VPC**, but choose the **Private Subnet**.
3. **Disable** Auto-assign Public IP.

---

## Step 4: Configure Secure Access to the Private Instance
To allow SSH access to the private instance only through the public instance (Bastion Host):

1. Create a **Security Group** and edit the **Inbound Rules**.
2. Allow **SSH** access (`port 22`) only from the **private IP** of the **public EC2 instance**.
3. Attach this security group to the **private EC2 instance**.

To fully convert the public EC2 instance into a **Bastion Host**:

1. Remove the **NGW** and only allow traffic within the **VPC**.
2. Update the **route table** of the private subnet to remove the **NGW route**.
3. Keep only the route within the **VPC**.

### Testing Secure Access
- Attempt to SSH into the private EC2 instance directly. If it fails, this is expected.
- SSH into the **public EC2 instance**, then SSH into the **private EC2 instance** from there.

---

## Step 5: Enable CloudWatch for Monitoring and Logging
To monitor your instances using **CloudWatch**:

1. SSH into your EC2 instance and install the **CloudWatch Agent** using the following commands:
   ```sh
   sudo yum install -y amazon-cloudwatch-agent
   sudo systemctl enable amazon-cloudwatch-agent
   sudo systemctl start amazon-cloudwatch-agent
   ```
2. Navigate to **CloudWatch** in the AWS console and create a **Log Group**.
3. Open the EC2 instance and use `vim` to edit the CloudWatch agent config:
   ```sh
   sudo vim /opt/aws/amazon-cloudwatch-agent/bin/config.json
   ```
4. Configure the JSON file to specify:
   - **Log file path** (file to monitor)
   - **CloudWatch Log Group Name** (created in Step 2)
   - **Stream Name** (EC2 instance ID)
5. Save changes and restart the CloudWatch agent:
   ```sh
   sudo systemctl restart amazon-cloudwatch-agent
   ```

---

## Conclusion
You have now successfully set up a custom AWS VPC with public and private subnets, secured access using a Bastion Host, and enabled monitoring with CloudWatch. This ensures proper network segmentation and security while allowing controlled internet access.
