variable "region" {
  default = "us-east-2"
}

#----------------------------------- code-commit ------------------------------#

variable "codecommit_repositories" {
  description = "Map of repositories to their email addresses"
  type        = map(list(string))
  default = {
    # skpd_hcmodel = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    # skpd_ews = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_clustering = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_nudges = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_dags = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_dataplatform = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_superapp = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
    skpd_reporting = ["shankarganesh1@cholams.murugappa.com", "venkateswararaor@cholams.murugappa.com", "raja.chellappan@affine.ai", "balajikannan@cholams.murugappa.com","Agarwal.rahul@bcg.com"]
  }
}
variable "referance_destination_branches" {
  default = ["refs/heads/main","refs/heads/dev"]
}

#------------------------------- Notification-rule -----------------------------------------------#

variable "event_type" {
  default = ["codecommit-repository-approvals-status-changed","codecommit-repository-pull-request-created"
  ]
}

variable "repository_approval_pools" {
  description = "Map of repository names to their approval pool members"
  type        = map(list(string))
  default = {
    # skpd_hcmodel = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    # skpd_ews     = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_clustering = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_nudges = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_dags = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_dataplatform = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_superapp = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    skpd_reporting = ["arn:aws:iam::524566954448:user/raja.chellappan@affine.ai", "arn:aws:iam::524566954448:user/venkateswararaor@cholams.murugappa.com","arn:aws:iam::524566954448:user/shankarganesh1@cholams.murugappa.com","arn:aws:iam::524566954448:user/balajikannan@cholams.murugappa.com","arn:aws:iam::524566954448:user/agarwal.rahul@bcg.com"]
    
  }
}

variable "No_of_approvers" {
  type = number
  default = 2
}

#------------------------------- redshift----------------------------------------------#

variable "cluster_identifier"{
  default = "chola-redshift-cluster"
}
variable "database_name" {
  default = "skpd"
}     
variable "master_username" {
  default = "skpdredshift"
}       
variable "node_type" {
  default = "dc2.large"
}          
variable "cluster_type" {
  default = "single-node"
}
variable "subnet_ids" {
  default = ["subnet-0225c1c66ffc078c6","subnet-04d6bdf375ec895f8"]
}

#--------------------- secret manager vars -----------------------#

variable "Secret_name" {
  default = "redshif-secret"
}

#------------------------ Qlik inst vars ------------------------#

variable "ami_id" {
  default = "ami-08b66c1b6d6a8a30a"
}

variable "Qlik-Enterprise_instance_type" {
  default = "r5a.4xlarge"      #"r5a.4xlarge"
}

variable "Qlik-NPrinting_instance_type" {
  default = "r5a.2xlarge"      #"r5a.2xlarge"
}

variable "private_subnet_1" {
  default = "subnet-0e68f15b045efc505"
}

variable "private_subnet_2" {
  default = "subnet-0ec31018bcc807151"
}

variable "key_name" {
  default = "chola-dig-minfy"
}

variable "user_data" {
  default = <<-EOF
            <powershell>
            # Change RDP port to 51268
            Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "PortNumber" -Value 51268
            New-NetFirewallRule -DisplayName 'RDPPORTLatest-TCP-In' -Profile 'Public' -Direction Inbound -Action Allow -Protocol TCP -LocalPort 51268
            New-NetFirewallRule -DisplayName 'RDPPORTLatest-UDP-In' -Profile 'Public' -Direction Inbound -Action Allow -Protocol UDP -LocalPort 51268
            Restart-Service -Name "TermService" -Force
            </powershell>
            EOF
}

variable "existing_vpc_id" {
    description = "ID of the existing vpc in which instances need to be launched"
    default     = "vpc-060d498a495c5e28e"
}


#------------------------------------ secrets-----------------------------------#

variable "secret_names" {
  description = "A map of secret names"
  type        = map(string)
  default = {
    "postgres" = "Qlik-postgres-secret"
    # "redshift" = "redshift-secret"
  }
}

#------------------------------------ rds-podtgres--------------------------------#

variable "identifier" {
  default = "qlikdb"
}

variable "db_name" {
  type        = string
  description = "db name "
  default     = "qlikdb"
}
variable "db_admin_user" {
  type        = string
  description = "db name "
  default     = "administrator"
}

variable "pg_engine_version" {
  type    = string
  default = "16"
}

variable "pg_family" {
  type    = string
  default = "postgres16"
}

variable "pg_major_engine_version" {
  type    = string
  default = "16"
}

variable "pg_instance_class" {
  type    = string
  default = "db.t3.large"   
}

variable "pg_allocated_storage" {
  type    = number
  default = 50
}

variable "pg_max_allocated_storage" {
  type    = number
  default = 200
}

variable "pg_port" {
  type    = number
  default = 5432
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


variable "private_subnets" {
  default = ["subnet-0e68f15b045efc505","subnet-0ec31018bcc807151"]
}


variable "vpc_cidr" {
  default = "172.31.0.0/16"
}