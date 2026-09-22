module "web_server" {
  source = "./modules/ec2"

  ami_id             = data.aws_ami.amazon_linux.id
  instance_type      = "t3.micro"
  subnet_id          = aws_subnet.public.id
  security_group_ids = [aws_security_group.web.id]
  instance_name      = "${local.name_prefix}-module-web"
}
