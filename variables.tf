variable "region" {
  default = "ap-south-1"
}

#----------------- code-commit----------------------#

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



#--------------------- Notification-rule--------------#

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

#------------------- redshift----------------------------#

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
