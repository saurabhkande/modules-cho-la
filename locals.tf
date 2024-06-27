locals {
  instances = {
    Qlik-Enterprise = {
      name                   = "Qlik-Enterprise"
      subnet_id              = var.private_subnet_1
      ami                    = var.ami_id
      instance_type          = var.Qlik-Enterprise_instance_type
      ebs_volume_size        = 400
    }
    Qlik-NPrinting = {
      name                   = "Qlik-NPrinting"
      subnet_id              = var.private_subnet_2
      ami                    = var.ami_id
      instance_type          = var.Qlik-NPrinting_instance_type
      ebs_volume_size        = 300
    }
}

   secrets = {
     postgres = {
       length    = 16
       special   = false
       min_upper = 1
    }
    # redshift = {
    #   length    = 16
    #   special   = false
    #   min_upper = 1
    # }
}
  tags = {
    Env  = "Dev"

  }
}