
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


module "secrets" {
  source = "./modules/secret-manager"
  secrets       = local.secrets
  secret_names  = var.secret_names
}

module "rds-postgres" {
    source                                   = "./modules/rds"
    identifier                               = var.identifier
    pg_engine_version                        = var.pg_engine_version
    pg_major_engine_version                  = var.pg_major_engine_version
    pg_family                                = var.pg_family
    pg_instance_class                        = var.pg_instance_class
    pg_allocated_storage                     = var.pg_allocated_storage
    pg_max_allocated_storage                 = var.pg_max_allocated_storage
    db_name                                  = var.db_name
    db_admin_user                            = var.db_admin_user
    db_admin_password                        = module.secrets.postgres_secret_string
    pg_port                                  = var.pg_port
    pg_multi_az                              = var.pg_multi_az
    pg_maintenance_window                    = var.pg_maintenance_window
    pg_skip_final_snapshot                   = var.pg_skip_final_snapshot
    pg_deletion_protection                   = var.pg_deletion_protection
    pg_performance_insights_enabled          = var.pg_performance_insights_enabled
    pg_performance_insights_retention_period = var.pg_performance_insights_retention_period
    vpc_cidr                                 = var.vpc_cidr
    existing_vpc_id                          = var.existing_vpc_id
    private_subnets                          = var.private_subnets
    tags                                     = local.tags
    # db_subnet_group_name             = aws_db_subnet_group.postgres-sub-grp.name
    # vpc_security_group_ids           = [aws_security_group.postgres_rds.id]
    # monitoring_interval              = var.pg_monitoring_interval
    # monitoring_role_arn              = aws_iam_role.rds_monitoring_role.arn
    # parameter_group_name             = aws_db_parameter_group.db.name
    # enabled_cloudwatch_logs_exports  = ["postgresql", "upgrade"]
}