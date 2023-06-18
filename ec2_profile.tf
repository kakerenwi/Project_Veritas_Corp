# Below is the resource block which creates EC2 Instance in another AWS Account you have names mathilda. 
# Do aws configure --profile=matilda and then enter her access key and secret access key
resource "aws_instance" "test" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  tags = {
    Name = "Test-Terraform-EC2"
  }
}


# Below is the provider which helps in connecting with AWS Account
provider "aws" {
  region = "us-east-1"
  profile = "kenneth"
}
