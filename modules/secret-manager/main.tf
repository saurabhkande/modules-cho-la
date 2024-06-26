
resource "random_password" "chola_random_secrets" {
  for_each     = var.secrets
  length       = each.value.length
  special      = each.value.special
  min_upper    = each.value.min_upper
}

resource "aws_secretsmanager_secret" "chola_secrets" {
  for_each                 = var.secret_names
  name                     = each.value
  recovery_window_in_days  = 0
}

resource "aws_secretsmanager_secret_version" "chola_secret_version" {
  for_each                 = var.secret_names
  secret_id                = aws_secretsmanager_secret.chola_secrets[each.key].id
  secret_string            = random_password.chola_random_secrets[each.key].result
}

