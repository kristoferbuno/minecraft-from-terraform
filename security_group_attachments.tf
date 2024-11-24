resource "aws_network_interface_sg_attachment" "minecraft_sg_attachment" {
  security_group_id    = module.aws_security_group.allow_minecraft_tcp.security_group_id
  network_interface_id = aws_instance.primary_host.primary_network_interface_id
}