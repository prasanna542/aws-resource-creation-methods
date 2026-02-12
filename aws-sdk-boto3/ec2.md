# EC2 Creation using AWS SDK (boto3)

## Overview

This document explains how an EC2 instance was created using Python and boto3.

---

## Method

- Used boto3 resource API
- Specified AMI, instance type, key pair, security group
- Added multiple tags during creation

---

## Outcome

- EC2 instance created programmatically
- Instance tagged properly

---

## Pros

- Can be embedded inside backend systems
- Dynamic logic possible
- Useful for automation tools

---

## Cons

- No state management
- Not declarative
- Hard to manage large infrastructure
