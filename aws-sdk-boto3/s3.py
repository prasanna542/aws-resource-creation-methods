import boto3
import time

# Configuration
region = "us-east-1"
bucket_name = f"prasanna-boto3-bucket-{int(time.time())}"

# Create S3 client
s3 = boto3.client("s3", region_name=region)

try:
    if region == "us-east-1":
        response = s3.create_bucket(Bucket=bucket_name)
    else:
        response = s3.create_bucket(
            Bucket=bucket_name,
            CreateBucketConfiguration={
                "LocationConstraint": region
            }
        )

    print(f"✅ Bucket created successfully: {bucket_name}")

except Exception as e:
    print("❌ Error creating bucket:", e)
