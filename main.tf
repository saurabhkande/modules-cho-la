
# module "code-commit" {
#   source = "./modules/code-commit"
#   codecommit_repositories = var.codecommit_repositories
# }

# module "sns" {
#   source = "./modules/sns"
#   codecommit_repositories = var.codecommit_repositories
#   event_types = var.event_type
#   repository_arns = module.code-commit.repository_arns  
# }

# module "approval-rule" {
#     source = "./modules/approval-rule-template"
#     codecommit_repositories = var.codecommit_repositories
#     referance_destination_branches = var.referance_destination_branches
#     No_of_approvers = var.No_of_approvers
#     repository_approval_pools = var.repository_approval_pools
# }


# module "secret-manager" {
#     source = "./modules/secret-manager"
#     Secret_name = var.Secret_name
# }

# module "redshift" {
#   source = "./modules/redshift"
#   cluster_identifier = var.cluster_identifier
#   database_name = var.database_name
#   master_username = var.master_username
#   master_password = module.secret-manager.secret_string
#   node_type = var.node_type
#   cluster_type = var.cluster_type
#   subnet_ids = var.subnet_ids
# }


# module "ec2_instance" {
#   source            = "./modules/ec2-instance"
#   instances         = local.instances
#   key_name          = var.key_name
#   user_data         = var.user_data
#   existing_vpc_id   = var.existing_vpc_id
#   tags              = local.tags
# }


# module "secrets" {
#   source = "./modules/secret-manager"
#   secrets       = local.secrets
#   secret_names  = var.secret_names
# }