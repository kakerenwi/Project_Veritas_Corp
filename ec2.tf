# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  count = 5
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-Terraform-EC2"
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
