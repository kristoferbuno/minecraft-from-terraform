resource "aws_security_group" "allow_minecraft_tcp" {
  name        = "allow_minecraft_tcp"
  description = "Allow in-bound and out-bound TCP traffic on port 25565 (default port for Minecraft networking)"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_vpc_security_group_ingress_rule" "minecraft_ingress" {
  security_group_id = aws_security_group.allow_minecraft_tcp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 25565
  ip_protocol       = "tcp"
  to_port           = 25565
}

resource "aws_vpc_security_group_egress_rule" "minecraft_ingress" {
  security_group_id = aws_security_group.allow_minecraft_tcp.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 25565
  ip_protocol       = "tcp"
  to_port           = 25565
}