# Define the AWS provider with the desired region
provider "aws" {
  region = "us-east-1"
}

# Create an AWS key pair for SSH access
resource "aws_key_pair" "example" {
  key_name   = "my-key-pair" # Specify your desired key pair name
  public_key = file("~/.ssh/id_rsa.pub") # Replace with your SSH public key file path
}

# Create a security group allowing inbound traffic on ports 22, 80, and 443
resource "aws_security_group" "web_server" {
  name_prefix = "web_server_"

  # Allow SSH (port 22), HTTP (port 80), and HTTPS (port 443) inbound traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance and associate it with the security group and key pair
resource "aws_instance" "web_server" {
  ami           = "ami-03a6eaae9938c858c" # Amazon Linux 2 AMI ID (us-east-1, free tier)
  instance_type = "t2.micro"              # Instance type eligible for free tier

  security_groups = [aws_security_group.web_server.name]
  key_name        = aws_key_pair.example.key_name

  tags = {
    Name = "web_server"
  }
}

output "instance_ip" {
  value = aws_instance.web_server.public_ip
}
