# PROJECT 4 

**🚀 AWS Multi-Environment Infrastructure using Terraform**

**📌 Project Overview**

This project demonstrates how to provision AWS infrastructure for multiple environments (Dev , Staging & Prod) using Terraform (Infrastructure as Code).
The goal is to create a scalable, reusable, and cost-optimized AWS setup without manual configuration.

The infrastructure is fully automated using Terraform modules and variables, following real-world cloud engineering practices.

**🛠️ Tech Stack**

Cloud Provider: AWS

Infrastructure as Code: Terraform

Services Used:

VPC

Public & Private Subnets

Internet Gateway

Route Tables

EC2 Instances

Security Groups

IAM (basic roles)

🏗️ Architecture

Separate environments: Dev ,Staging and Prod

Each environment has:

Custom VPC

Public and private subnets

EC2 instances deployed via Terraform

Infrastructure is defined using modules for reusability

Environment-specific configuration handled using variables

(Architecture diagram or screenshots can be added here)

**🎯 Objectives Achieved in This Project**

Designed and deployed multi-environment AWS infrastructure (Dev & Prod) using Terraform to follow real-world cloud practices.

Implemented Infrastructure as Code (IaC) to automate AWS resource provisioning, eliminating manual console-based setup.

Built a reusable and modular Terraform architecture using modules, variables, and environment-specific configurations.

Created secure AWS networking by configuring VPC, public & private subnets, route tables, and security groups.

Deployed EC2 instances via Terraform and validated connectivity across environments.

Applied cost optimization practices by stopping/destroying resources after deployment and documenting infrastructure using screenshots.

Gained hands-on experience with Terraform CLI workflow (init, validate, plan, apply, destroy).

Strengthened practical understanding of AWS core services and cloud automation, aligning with Cloud Engineer / DevOps fresher roles.

**💰 Cost Optimization**

Resources are stopped/destroyed after testing

No always-running services

Designed for learning and demo purposes to avoid AWS billing issues

**🎯 Key Learnings**

Hands-on experience with Terraform modules

Managing multiple environments using IaC

AWS networking fundamentals (VPC, subnets, routing)

Cost-aware cloud deployment

Industry-standard Terraform project structure

**📸 Screenshots**

Screenshots of AWS Console and Terraform outputs are included to validate deployment.

📌 Use Case

Cloud Engineer / DevOps project

Resume & portfolio showcase

Terraform + AWS practical implementation
