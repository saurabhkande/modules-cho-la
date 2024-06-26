variable "db_name" {
  type        = string
  description = "db name "
  default     = "skpddbmodel-db"
}

variable "db_admin_user" {
  type        = string
  description = "db name "
  default     = "administrator"
}

variable "identifier" {
  default = "skpddbmodel"
}

variable "db_admin_password" {
  
}

variable "pg_engine_version" {
  type    = string

}
variable "pg_family" {
  type    = string

}
variable "pg_major_engine_version" {
  type    = string

}
variable "pg_instance_class" {
  type    = string
  
}
variable "pg_allocated_storage" {
  type    = number
  
}
variable "pg_max_allocated_storage" {
  type    = number
  
}
variable "pg_port" {
  type    = number
  
}
variable "pg_multi_az" {
  type    = bool
  default = false
}
variable "pg_maintenance_window" {
  type    = string
  default = "Mon:00:00-Mon:03:00"
}
variable "pg_create_cloudwatch_log_group" {
  type    = bool
  default = true
}
variable "pg_skip_final_snapshot" {
  type    = bool
  default = true
}
variable "pg_deletion_protection" {
  type    = bool
  default = false
}
variable "pg_performance_insights_enabled" {
  type    = bool
  default = true
}
variable "pg_performance_insights_retention_period" {
  type    = number
  default = 7
}
variable "pg_create_monitoring_role" {
  type    = bool
  default = true
}
variable "pg_monitoring_interval" {
  type    = number
  default = 60
}

variable "tags" {
  
}

variable "private_subnets" {
  
}

variable "existing_vpc_id" {
  
}

variable "vpc_cidr" {
  
}