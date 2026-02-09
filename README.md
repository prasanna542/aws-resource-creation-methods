# AWS Resource Creation Methods: Console, CLI, SDK & IaC

This project demonstrates the **different ways to create AWS resources** by provisioning the same resources using multiple approaches — manual, programmatic, and Infrastructure as Code (IaC).

The goal is to understand **how AWS resources are created**, **when to use each method**, and **the trade-offs between them** in real-world DevOps and cloud environments.

---

## 🎯 Project Objective

- Create commonly used AWS resources using multiple methods
- Compare manual, imperative, and declarative approaches
- Understand real-world use cases for each method
- Document pros, cons, and best practices

---

## 🧱 AWS Resources Covered

The same resources are created using each method to allow clear comparison:

- **EC2 Instance** (Compute)
- **S3 Bucket** (Storage)

---

## 🛠️ Resource Creation Methods

Each of the following methods is used to create **both EC2 and S3**:

1. AWS Management Console  
2. AWS CLI  
3. AWS SDK (Python – boto3)  
4. AWS CloudFormation  
5. AWS CDK  
6. Terraform  

---

## 📂 Repository Structure

```text
aws-resource-creation-methods/
│
├── README.md
│
├── aws-console/
│   ├── ec2.md              # EC2 creation using AWS Console
│   └── s3.md               # S3 creation using AWS Console
│
├── aws-cli/
│   ├── ec2.sh              # EC2 creation using AWS CLI
│   └── s3.sh               # S3 creation using AWS CLI
│
├── aws-sdk-boto3/
│   ├── ec2.py              # EC2 creation using boto3
│   └── s3.py               # S3 creation using boto3
│
├── cloudformation/
│   ├── ec2.yaml            # EC2 CloudFormation template
│   └── s3.yaml             # S3 CloudFormation template
│
├── aws-cdk/
│   ├── ec2/                # EC2 CDK stack
│   └── s3/                 # S3 CDK stack
│
├── terraform/
│   ├── ec2/                # EC2 Terraform configuration
│   └── s3/                 # S3 Terraform configuration
│
└── diagrams/
    └── comparison.png      # Architecture / comparison diagram
