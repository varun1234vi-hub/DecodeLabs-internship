# 🚀 Project 3 – Cloud Data Warehouse using AWS RDS (Private Subnet Architecture)

# 📌 Project Overview

This project demonstrates how to deploy a secure cloud database architecture on AWS using Amazon RDS in a private subnet and accessing it through a Bastion Host (EC2 instance).

The goal is to implement a production-style secure architecture where the database is not publicly accessible, and all access is performed through a controlled jump server (bastion host).

This approach follows cloud security best practices used in real-world enterprise cloud environments.

# 🏗️ Architecture

The architecture consists of:

🌐 VPC (Virtual Private Cloud)

🌍 Public Subnet

🔒 Private Subnet

🖥️ EC2 Bastion Host

🗄️ Amazon RDS (MySQL)

Database access is restricted to the private network and only accessible via the bastion host.

                 🌐 Internet
                       │
                       │ SSH
                       ▼
              🖥️ EC2 Bastion Host
              (Public Subnet)
                       │
                       │ MySQL Connection
                       ▼
               🗄️ Amazon RDS MySQL
               (Private Subnet)
                       │
                       ▼
            📊 Interns Database
            
# 🧰 Technologies Used

☁️ Amazon Web Services (AWS)

🗄️ Amazon RDS (MySQL)

🖥️ Amazon EC2

🌐 AWS VPC

🔒 Private & Public Subnets

🛡️ Security Groups

🔑 SSH

💾 MySQL CLI

# ✨ Key Features

🔐 Secure database deployment

🔒 RDS placed in private subnet

🖥️ Access through EC2 Bastion Host

🚫 No direct internet exposure of database

☁️ Production-style cloud networking

🏗️ Demonstrates secure cloud architecture

# 🌐 Network Architecture

🌐 VPC	Isolated AWS network

🌍 Public Subnet	Hosts Bastion EC2 instance

🔒 Private Subnet	Hosts RDS database

🖥️ Bastion Host	Secure jump server

🗄️ RDS Instance	Managed MySQL database

🛡️ Security Design

🖥️ Bastion Host Security Group

Allows SSH access from trusted IP.

# Inbound:
Port 22 (SSH) → Your IP
🗄️ RDS Security Group

Allows database access only from the Bastion Host.

# Inbound:
Port 3306 (MySQL) → Bastion Host Security Group

This ensures the database cannot be accessed directly from the internet.

# ⚙️ Implementation Steps

1️⃣ Create VPC
Create a custom VPC with CIDR block:

10.0.0.0/16
2️⃣ Create Subnets
🌍 Public Subnet
10.0.1.0/24
🔒 Private Subnet
10.0.2.0/24

3️⃣ Launch Bastion Host

Launch an EC2 instance in the public subnet.

Configuration

Instance type: t2.micro

OS: Amazon Linux / Ubuntu

Attach security group allowing SSH

Connect via SSH:

ssh -i key.pem ec2-user@<public-ip>

4️⃣ Create RDS Instance

Create an Amazon RDS MySQL instance.

Configuration:

Engine: MySQL

Instance type: db.t3.micro

Public Access: Disabled

Subnet: Private Subnet

Security group: Allow access from Bastion host

5️⃣ Connect to RDS via Bastion Host

Install MySQL client on EC2:

sudo yum install mysql -y

Connect to RDS:

mysql -h <RDS-endpoint> -u admin -p

# 🗄️ Database Implementation

Create database
CREATE DATABASE db_demo;

Use database
USE db_demmo;

Create table

CREATE TABLE Interns (
    InternID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

Insert sample data

INSERT INTO Interns (FirstName, LastName, Email)
VALUES 
('Varun','Singh','varun@email.com'),
('Rahul','Sharma','rahul@email.com'),
('Ananya','Gupta','ananya@email.com');

Retrieve data

SELECT * FROM Interns;
🎓 Learning Outcomes

#Through this project, the following cloud concepts were implemented:

☁️ Secure cloud networking

🌐 VPC architecture design

🔒 Public vs private subnet usage

🖥️ Bastion host concept

🗄️ Secure database access

⚙️ AWS RDS management

🔑 SSH-based infrastructure access

🌍 Real World Relevance

# This architecture is widely used in:

🏢 Enterprise cloud deployments

🔐 Secure database infrastructure

☁️ Production AWS environments

⚙️ DevOps pipelines

# Companies rarely expose databases publicly, making bastion host architecture a critical cloud security pattern.

👨‍💻 Author

Varun Cloud & DevOps Intern @DecodeLabs
