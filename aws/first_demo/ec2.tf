resource "aws_instance" "navawsserver" {
  ami = "ami-02e136e904f3da870"
  instance_type = "t2.nano"

  tags = {
    Name = "Naveen-Techlanders-aws-ec2-instance-v2"
    Env = "Dev"
  }
}

output "navawsserver-ip" {
  value = aws_instance.navawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.navawsserver.private_ip
}



