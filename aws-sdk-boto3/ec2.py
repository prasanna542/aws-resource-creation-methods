import boto3

# Configuration
region = "us-east-1"
ami_id = "ami-0b6c6ebed2801a5cb"  # Ubuntu AMI (Mumbai example)
instance_type = "t3.micro"
key_name = "devopsPractiseServer"
security_group_id = "sg-03e1e938d1af2dfa3"

# Create EC2 client
ec2 = boto3.resource("ec2", region_name=region)

try:
    instance = ec2.create_instances(
        ImageId=ami_id,
        InstanceType=instance_type,
        KeyName=key_name,
        SecurityGroupIds=[security_group_id],
        MinCount=1,
        MaxCount=1,
        TagSpecifications=[
            {
                "ResourceType": "instance",
                "Tags": [
                    {"Key": "Name", "Value": "boto3-ec2-instance_for_prod"},
                    {"Key": "Environment", "Value": "prod"},
                    {"Key": "Project", "Value": "aws-resource-creation"}
                ]
            }
        ]
    )

    print("✅ EC2 instance created successfully.")
    print("Instance ID:", instance[0].id)
    print("Instance Details:", instance)

except Exception as e:
    print("❌ Error creating EC2:", e)
