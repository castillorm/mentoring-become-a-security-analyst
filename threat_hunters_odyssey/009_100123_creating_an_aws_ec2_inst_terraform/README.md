# Episode 5 - Creating an AWS EC2 Instance with Terraform | Elastic Security POC (Part 1)

Are you ready to dive into the world of detection engineering? Welcome to Part 1 of our Elastic proof of concept, where we'll walk you through setting up your AWS EC2 instance using Terraform. This step-by-step tutorial is beginner-friendly, assuming only basic Unix command-line experience. By the end of this post, you'll have your AWS account, a working Terraform setup, and a running EC2 instance.

### **Part 1: Creating Your Free Tier AWS Account**

#### **Step 1: Sign Up for an AWS Free Tier Account**

1. **Visit AWS Free Tier**: Head over to the [AWS Free Tier](https://aws.amazon.com/free/) page and click on the "Create Free Account" button.

2. **Account Setup**: Follow the prompts to create your AWS account. You'll need to provide your email address, create a password, and enter some basic information.

3. **Payment Information**: AWS may require you to enter payment information, even for free-tier accounts. Don't worry; they won't charge you unless you exceed the free-tier limits.

4. **Verify Your Identity**: AWS will ask you to verify your identity through a phone call or text message.

5. **Select Plan**: Choose the "Basic" plan for now, which is free.

#### **Step 2: Create an IAM User**

1. **Sign in to the AWS Management Console**: Use the login credentials you just created to sign in to the AWS Management Console.

2. **Open the IAM Console**: In the AWS Management Console, navigate to the "Services" menu, select "IAM" under "Security, Identity, & Compliance."

3. **Create a New User**: Click on "Users" in the left sidebar and then "Add user."

4. **User Details**: Enter a username for your IAM user and select "Programmatic access" for access type.

5. **Permissions**: On the permissions screen, select "Attach existing policies directly" and choose the "AdministratorAccess" policy. This provides full access to AWS resources.

6. **Review and Create**: Review your settings and create the user.

7. **Access Key**: After creating the user, you'll be shown an access key ID and a secret access key. Keep these safe; you'll need them later.

#### **Step 3: Install AWS CLI**

Certainly! Here are step-by-step instructions for installing the AWS CLI on macOS using the command line:

1. **Download AWS CLI Package:**
   
   Open your terminal and use the `curl` command to download the AWS CLI package. This command retrieves the package from the AWS website and saves it as "AWSCLIV2.pkg" in the current directory.

   ```shell
   $ curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
   ```

2. **Install AWS CLI:**
   
   Now, run the macOS installer program, specifying the downloaded `.pkg` file as the source. Use the `-pkg` parameter to specify the name of the package to install, and the `-target /` parameter to specify the drive to install the package to. The AWS CLI files will be installed to `/usr/local/aws-cli`, and a symlink will be automatically created in `/usr/local/bin`. You need to include `sudo` in the command to grant write permissions to those folders.

   ```shell
   $ sudo installer -pkg ./AWSCLIV2.pkg -target /
   ```

3. **Verification:**
   
   After the installation is complete, you can verify that the AWS CLI is properly installed and accessible in your terminal. Use the following commands:

   - To check the location of the AWS CLI executable:

     ```shell
     $ which aws
     ```

     It should return `/usr/local/bin/aws`.

   - To check the AWS CLI version:

     ```shell
     $ aws --version
     ```

     You should see the AWS CLI version information displayed.

If the `aws` command cannot be found, you might need to restart your terminal or follow the troubleshooting steps outlined in the [official AWS CLI installation documentation](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

4. **Configure AWS CLI**: Configure the AWS CLI with your IAM user's access key and secret key by running:

   ```bash
   aws configure
   ```

   Enter the access key, secret key, your preferred region (e.g., us-east-1), and the default output format.

#### **Step 4: Install Terraform**

1. **Download Terraform**: Visit the [Terraform download page](https://www.terraform.io/downloads.html) and download the appropriate Terraform binary for macOS.

2. **Install Terraform**: Unzip the downloaded file and move the `terraform` binary to a directory in your PATH, like `/usr/local/bin`.


### **Step 5: Create Terraform Configuration**

Create a `.tf` file (e.g., `ec2_instance.tf`) to define your Terraform configuration. Replace the placeholders with your own values:

```hcl
provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI ID (us-east-1)
  instance_type = "t2.micro"               # Instance type
  key_name      = "your-key-pair-name"     # Change to your SSH key pair name
}

output "instance_ip" {
  value = aws_instance.example.public_ip
}
```

### **Step 6: Initialize and Apply Terraform**

1. **Initialize Terraform**: In your terminal, navigate to the directory where your `.tf` file is located and run:

   ```bash
   terraform init
   ```

2. **Apply Configuration**: Apply your Terraform configuration to create the EC2 instance:

   ```bash
   terraform apply
   ```

   Terraform will display the changes it intends to make. Type `yes` to confirm and create the instance.

### **Step 5: Connect to Your EC2 Instance**

1. **SSH Access**: After the Terraform script completes successfully, you can SSH into your EC2 instance using the SSH key pair specified in the Terraform configuration:

   ```bash
   ssh -i /path/to/your/private-key.pem ec2-user@<instance-public-ip>
   ```

   Replace `/path/to/your/private-key.pem` with the path to your private key file and `<instance-public-ip>` with your EC2 instance's public IP address.

### **Step 7: Terminate Your EC2 Instance (When Done)**

These steps should help you create a basic Amazon Linux EC2 instance using Terraform and connect to it over SSH. Make sure to replace the placeholders with your actual AWS and SSH key pair information.

Now you have the tools you need to launch your EC2 instance using Terraform. In Part 2 of this series, we'll guide you through installing an Elastic agent and getting the EC2 instance protected by Elastic.

Stay tuned for the next installment of our series, and happy cloud computing!

## My Videos

- Follow my YouTube channel for videos on this subject. 
- https://youtube.com/playlist?list=PLpF_8NEH9fv584-JzS5lnGSgZ6g9TgKoF&si=xu_MC_6VkPEAShdt

- Follow my Tiktok account for videos on this subject. 
- https://www.tiktok.com/@castillo_rod?lang=en

