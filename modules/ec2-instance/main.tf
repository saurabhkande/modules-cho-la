resource "aws_instance" "Qlik-instances" {
  for_each               = var.instances
  ami                    = each.value.ami
  instance_type          = each.value.instance_type
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_rdp.id]
  key_name               = var.key_name
  user_data              = var.user_data

  ebs_block_device {
    device_name           = "/dev/sda2"
    volume_size           = each.value.ebs_volume_size
    volume_type           = "gp2"
    delete_on_termination = false
  }

  tags = merge(var.tags, { Name = each.value.name })
}


# data "http" "myip" {
#   url = "https://ipv4.icanhazip.com"
# }

resource "aws_security_group" "allow_rdp" {
  name        = "Qlik_allow_rdp_SG"
  description = "Allow RDP traffic"
  vpc_id      = var.existing_vpc_id

  ingress {
    from_port   = 51268
    to_port     = 51268
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr] #["${chomp(data.http.myip.response_body)}/32"]
  }

  ingress {
    from_port   = 51268
    to_port     = 51268
    protocol    = "udp"
    cidr_blocks = [var.vpc_cidr] #["${chomp(data.http.myip.response_body)}/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# [var.vpc_cidr]