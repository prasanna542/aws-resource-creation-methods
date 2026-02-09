#!/bin/bash

REGION="ap-south-1"
AMI_ID="ami-0f5ee92e2d63afc18"
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-keypair-name"
SECURITY_GROUP_ID="sg-xxxxxxxx"
INSTANCE_NAME="cli-ec2-instance"

echo "Creating EC2 Instance with Name tag..."

aws ec2 run-instances \
  --image-id $AMI_ID \
  --count 1 \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --region $REGION \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]"

echo "EC2 instance created with Name: $INSTANCE_NAME"
