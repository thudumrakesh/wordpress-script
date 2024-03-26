resource "aws_instance" "WORDPRESS" {
  ami           = "ami-000c0df09737657b6"
  instance_type = "t2.micro"

  key_name                    = "ohio"
  vpc_security_group_ids      = [aws_security_group.sg1.id]
  subnet_id                   = aws_subnet.publicsubnet1.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "wordpress"
  }
}

