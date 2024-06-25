resource "aws_codecommit_approval_rule_template" "Dev_rule_temp" {
  for_each = var.repository_approval_pools
  name        = "${each.key}-approval-rule"
  description = "This is an approval rule template for ${each.key}"

  content = jsonencode({
    Version               = "2018-11-08"
    DestinationReferences = var.referance_destination_branches
    Statements = [{
      Type                    = "Approvers"
      NumberOfApprovalsNeeded = var.No_of_approvers
      ApprovalPoolMembers     = each.value       
    }]
  })
}

resource "aws_codecommit_approval_rule_template_association" "dev_rule_temp_association" {
  for_each                     = var.codecommit_repositories
  approval_rule_template_name  = aws_codecommit_approval_rule_template.Dev_rule_temp[each.key].name
  repository_name              = each.key
}