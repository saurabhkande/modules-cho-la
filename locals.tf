locals {
  instances = {
    Qlik-Enterprise = {
      name                   = "Qlik-Enterprise"
      subnet_id              = var.private_subnet_1
      ami                    = var.ami_id
      instance_type          = var.instance_type_1
      root_volume_size       = 128
      ebs_volume_size        = 400
    }
    Qlik-NPrinting = {
      name                   = "Qlik-NPrinting"
      subnet_id              = var.private_subnet_2
      ami                    = var.ami_id
      instance_type          = var.instance_type_2
      root_volume_size       = 64
      ebs_volume_size        = 300
    }
}
  tags = {
    Env  = "Dev"

  }
}