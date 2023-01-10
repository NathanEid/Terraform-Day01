resource "aws_instance" "apache2" {
  ami             = "ami-06878d265978313ca" 
  instance_type   = "t2.micro"
  associate_public_ip_address = true
  subnet_id       = aws_subnet.subnet.id
  security_groups = [aws_security_group.mysecgr.id]

  user_data = <<-EOF
  #!/bin/bash
  echo "*** Installing apache2"
  sudo apt update -y
  sudo apt install apache2 -y
  echo "*** Completed Installing apache2"
  EOF

  tags = {
    Name = "apache2"
  }
}