resource "aws_instance" "web" {
  ami           = "ami-023a307f3d27ea427" 
  instance_type = "t2.micro"
  key_name      = "linux-key"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y nginx
              systemctl start nginx
              EOF

  tags = {
    Name = "aws-nginx"
  }
}

