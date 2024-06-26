output "postgres_secret_string" {
  sensitive = true
  value     = aws_secretsmanager_secret_version.chola_secret_version["postgres"].secret_string
}

output "redshift_secret_string" {
  sensitive  = true
  value      = aws_secretsmanager_secret_version.chola_secret_version["redshift"].secret_string
}
