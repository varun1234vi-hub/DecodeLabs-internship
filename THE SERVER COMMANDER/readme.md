## 🚀 Project 2: THE SERVER COMMANDER

# 📌 Scenario

A startup is launching a new dynamic application and requires a dedicated server environment in the cloud.

They need:

Full control over the Operating System (OS)

Ability to install custom software

Control over security patches

Secure remote access

As a System Administrator (SysAdmin), the mission was to provision and configure a secure cloud-based virtual server.

# 🎯 Mission Objectives

✔ Launch a Virtual Machine in the cloud

✔ Configure a Linux-based OS (Ubuntu / Amazon Linux)

✔ Securely connect using SSH

✔ Install and configure a Web Server

✔ Deploy a custom “Welcome to DecodeLabs” webpage

# 🛠️ Tools & Technologies Used

☁️ AWS EC2 / Azure Virtual Machines

🐧 Linux (Ubuntu / Amazon Linux)

🔐 SSH (Secure Shell)

🌐 Apache / Nginx Web Server

💻 Terminal / Command Line Interface

# 🏗️ Architecture Overview

Client (Local Machine)
⬇
SSH Connection
⬇
Cloud Virtual Machine (EC2 / Azure VM)
⬇
Linux OS
⬇
Apache/Nginx Web Server
⬇
Custom Webpage Hosted

# ⚙️ Step-by-Step Implementation

1️⃣ Launch Virtual Machine

Created an EC2 Instance on Amazon Web Services
(Alternatively deploy on Microsoft Azure Virtual Machines)

Selected:

Amazon Linux

Instance Type: t3.micro (Free Tier)

Configured Security Group:

Port 22 (SSH)

Port 80 (HTTP)

Generated and downloaded .pem key pair

2️⃣ Connect to Server via SSH

chmod 400 my-key.pem
ssh -i my-key.pem ubuntu@<Public-IP>

Secure remote access established successfully.

3️⃣ Install Web Server

For Apache (Ubuntu):

sudo apt update
sudo apt install apache2 -y

For Amazon Linux:

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd

For Nginx:

sudo apt install nginx -y
4️⃣ Deploy Custom Webpage

Navigated to web root directory:

cd /var/www/html

Created custom webpage:

sudo nano index.html

Added:

<h1>Welcome to DecodeLabs: Mission Accomplished</h1>

Restarted web server:

sudo systemctl restart apache2

# 🌍 Result

✔ Successfully provisioned a cloud virtual server
✔ Configured Linux environment
✔ Installed and managed web server
✔ Hosted custom webpage accessible via Public IP
✔ Demonstrated full OS-level administrative control

Access in browser:

http://<Public-IP>

# 🔐 Security Best Practices Applied

Restricted SSH access

Used key-based authentication

Limited open ports (22 & 80 only)

Applied system updates

# 📚 Key Learnings

Cloud Infrastructure Provisioning

Linux Server Administration

Networking & Security Groups

Web Server Deployment

Real-world DevOps & SysAdmin Workflow

# 🎖️ Project Status

✅ Mission Accomplished
🖥️ Server Deployed
🌐 Webpage Live

👨‍💻 Author

Varun 
Cloud & DevOps Intren @DecodeLabs
BCA Student
