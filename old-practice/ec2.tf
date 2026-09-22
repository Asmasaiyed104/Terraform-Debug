resource "aws_instance" "web" {
  ami = data.aws_ami.amazon_linux.id

  instance_type = "t3.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]
  associate_public_ip_address = true

  user_data = <<-EOF
#!/bin/bash
dnf install -y nginx
systemctl enable nginx
systemctl start nginx
EOF
  tags = {
    Name        = "${local.name_prefix}-web-server"
    Environment = var.environment
  }
}
