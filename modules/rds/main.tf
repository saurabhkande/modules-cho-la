resource "aws_db_instance" "db" {
  identifier                       = var.identifier
  engine                           = "postgres"
  engine_version                   = var.pg_engine_version
  instance_class                   = var.pg_instance_class
  allocated_storage                = var.pg_allocated_storage
  max_allocated_storage            = var.pg_max_allocated_storage
  db_name                          = var.db_name
  username                         = var.db_admin_user
  password                         = var.db_admin_password
  port                             = var.pg_port
  multi_az                         = var.pg_multi_az
  db_subnet_group_name             = aws_db_subnet_group.postgres-sub-grp.name
  vpc_security_group_ids           = [aws_security_group.postgres_rds.id]
  maintenance_window               = var.pg_maintenance_window
  enabled_cloudwatch_logs_exports  = ["postgresql", "upgrade"]
  skip_final_snapshot              = var.pg_skip_final_snapshot
  deletion_protection              = var.pg_deletion_protection
  performance_insights_enabled     = var.pg_performance_insights_enabled
  performance_insights_retention_period = var.pg_performance_insights_retention_period
  monitoring_interval              = var.pg_monitoring_interval
  monitoring_role_arn              = aws_iam_role.rds_monitoring_role.arn
  parameter_group_name             = aws_db_parameter_group.db.name
  tags                             = var.tags


  # Optional properties
#   backup_window                   = var.pg_backup_window
#   backup_retention_period         = var.pg_backup_retention_period
#   create_monitoring_role          = var.pg_create_monitoring_role
#   monitoring_role_name            = var.pg_monitoring_role_name
#   monitoring_role_use_name_prefix = var.pg_monitoring_role_use_name_prefix
#   monitoring_role_description     = "SKPD_DB_MODEL_ROLE"
}

# PostgreSQL RDS security group

resource "aws_iam_role" "rds_monitoring_role" {
  name               = "Chola_postgres-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action    = "sts:AssumeRole",
      Effect    = "Allow",
      Principal = {
        Service = "monitoring.rds.amazonaws.com"
      }
    }]
  })

  tags = var.tags
}

# Attach the required policy to the IAM role

resource "aws_iam_role_policy_attachment" "rds_monitoring_role_policy" {
  role       = aws_iam_role.rds_monitoring_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
}

resource "aws_security_group" "postgres_rds" {
  name        = "RDS_postgres_SG"
  description = "Allow RDP traffic"
  vpc_id      = var.existing_vpc_id

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define the DB parameter group

resource "aws_db_parameter_group" "db" {
  name        = "${var.db_name}-pg"
  family      = var.pg_family
  description = "Custom parameter group for ${var.db_name}"

  parameter {
    name  = "autovacuum"
    value = "1"
  }

  parameter {
    name  = "client_encoding"
    value = "utf8"
  }

  tags = var.tags
}

resource "aws_db_subnet_group" "postgres-sub-grp" {
  name       = "postgres-subnet-group"
  subnet_ids = var.private_subnets
  tags = var.tags
}