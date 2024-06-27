variable "instances" {
  description = "Map of instances with their configurations"
  type        = map(object({
    ami               = string
    instance_type     = string
    subnet_id         = string
    ebs_volume_size   = number
    name              = string
  }))
}

variable "existing_vpc_id" {
  description = "ID of the existing vpc in which instances need to be launched"
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "user_data" {
  description = "User data to provision the instance"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
}

variable "vpc_cidr" {
  
}


