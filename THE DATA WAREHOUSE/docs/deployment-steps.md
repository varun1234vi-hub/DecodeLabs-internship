# ⚙️ Deployment Steps – Cloud Data Warehouse using AWS RDS (Private Subnet Architecture)

This document provides step-by-step instructions to deploy a secure AWS database architecture using:

Amazon VPC

Public & Private Subnets

EC2 Bastion Host

Amazon RDS (MySQL)

Security Groups

SSH Access

The goal is to deploy a database in a private subnet and access it securely through a bastion host.

# 📌 Prerequisites

Before starting, ensure you have:

✔️ An active Amazon Web Services account
✔️ Basic knowledge of AWS Management Console
✔️ Installed OpenSSH client
✔️ Basic knowledge of MySQL commands

🏗️ Step 1 – Create a VPC

Navigate to:

AWS Console → VPC → Create VPC

Configuration
Setting	Value
Name	project3-vpc
IPv4 CIDR	10.0.0.0/16
Tenancy	Default

This VPC will host all project resources.

🌍 Step 2 – Create Subnets

Create two subnets inside the VPC.

Public Subnet
Setting	Value
Name	public-subnet
CIDR	10.0.1.0/24
Auto Assign Public IP	Enabled

Purpose: Hosts Bastion Host EC2 instance

🔒 Private Subnet
Setting	Value
Name	private-subnet
CIDR	10.0.2.0/24

Purpose: Hosts RDS Database

🌐 Step 3 – Configure Internet Gateway

Create and attach an Internet Gateway.

Steps

Go to VPC → Internet Gateways

Click Create Internet Gateway

Name it:

project3-igw

Attach it to the VPC.

🛣️ Step 4 – Configure Route Table
Public Route Table

Add route:

Destination	Target
0.0.0.0/0	Internet Gateway

Associate this route table with the public subnet.

This allows the EC2 Bastion Host to access the internet.

🖥️ Step 5 – Launch EC2 Bastion Host

Navigate to:

AWS Console → EC2 → Launch Instance

Use Amazon EC2

Configuration
Setting	Value
Instance Name	bastion-host
Instance Type	t2.micro
OS	Amazon Linux
Network	project3-vpc
Subnet	public-subnet
Public IP	Enabled
Create Security Group

Name:

bastion-sg
Inbound Rule
Type	Port	Source
SSH	22	Your Public IP

This ensures only you can SSH into the Bastion host.

🔑 Step 6 – Connect to Bastion Host

Download the key pair (.pem) during EC2 launch.

Connect using:

ssh -i key.pem ec2-user@<EC2-Public-IP>
🗄️ Step 7 – Create RDS Subnet Group

Navigate to:

RDS → Subnet Groups

Using Amazon RDS

Create a subnet group.

Configuration
Setting	Value
Name	rds-private-subnet-group
VPC	project3-vpc
Subnet	private-subnet

This ensures the database runs inside private subnet.

🗄️ Step 8 – Launch RDS MySQL Instance

Navigate to:

AWS Console → RDS → Create Database

Configuration
Setting	Value
Engine	MySQL
Instance Type	db.t3.micro
DB Identifier	project3-db
Master Username	admin
Public Access	❌ Disabled
VPC	project3-vpc
Subnet Group	rds-private-subnet-group
🛡️ Step 9 – Configure RDS Security Group

Create Security Group:

rds-sg
Inbound Rule
Type	Port	Source
MySQL	3306	Bastion Security Group

This ensures:

✔️ Database cannot be accessed from the internet
✔️ Only the Bastion Host can access the database

🔧 Step 10 – Install MySQL Client on Bastion Host

Connect to EC2 and run:

sudo yum update -y
sudo yum install mysql -y
🔗 Step 11 – Connect to RDS Database

Use the RDS Endpoint from AWS Console.

mysql -h <RDS-ENDPOINT> -u admin -p

Enter the password you set during database creation.

💾 Step 12 – Create Database

Create the project database.

CREATE DATABASE interns_db;

# Use the database.

USE interns_db;

📊 Step 13 – Create Table

CREATE TABLE Interns (
    InternID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

🧪 Step 14 – Insert Sample Data

INSERT INTO Interns (FirstName, LastName, Email)
VALUES
('John','Doe','jdoe@decodelabs.com'),
('Jane','Smith','jsmith@decodelabs.com'),
('Conan',"O'Leary",'coleary@decodelabs.com');

🔍 Step 15 – Verify Data
SELECT * FROM Interns;

Expected Output:

+----------+-----------+----------+-------------------+
| InternID | FirstName | LastName | Email             |
+----------+-----------+----------+-------------------+
| 1        | Varun     | Singh    | varun@email.com   |
| 2        | Rahul     | Sharma   | rahul@email.com   |
| 3        | Ananya    | Gupta    | ananya@email.com  |
+----------+-----------+----------+-------------------+
🔐 Security Summary

Security is enforced using three layers:

Network Isolation

✔️ Private subnet database
✔️ VPC network isolation

Bastion Access Control

✔️ Only Bastion host can access RDS
✔️ SSH access restricted to trusted IP

Database Protection

✔️ RDS Public Access disabled
✔️ Security Group restrictions

✅ Deployment Completed

Your secure architecture now includes:

✔️ Private Database Infrastructure
✔️ Bastion Host Secure Access
✔️ Enterprise-style Cloud Networking
