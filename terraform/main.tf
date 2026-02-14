resource "aws_s3_bucket" "demo_bucket_name_here" {
  bucket = var.bucket_name

  tags = {
    Name        = "terraform-demo-bucket"
    Environment = "dev"
    Project     = "aws-resource-creation"
  }
}

resource "aws_instance" "demo_ec2_name_here" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name        = "terraform-demo-ec2"
    Environment = "dev"
    Project     = "aws-resource-creation"
  }
}
