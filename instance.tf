resource "aws_instance" "grupo-11" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.subnet1.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.allow_icmp_ssh.id, aws_security_group.allow_http_https.id]
  private_ip                  = 172.16.11.4/28
  key_name                    = aws_key_pair.key1.key_name
  user_data                   = file("user-data.sh")

  tags = {
    Name        = "grupo-11"
    Owner       = "student_11"
    Environment = "develop"
    OS          = "amazon-linux"
  }
}
