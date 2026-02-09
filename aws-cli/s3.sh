#!/bin/bash

BUCKET_NAME="prasanna-devops-cli-bucket-$(date +%s)"
REGION="ap-south-1"

echo "Creating S3 Bucket..."

aws s3api create-bucket \
  --bucket $BUCKET_NAME \
  --region $REGION \
  --create-bucket-configuration LocationConstraint=$REGION

echo "Bucket created: $BUCKET_NAME"
