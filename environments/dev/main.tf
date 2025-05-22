module "azure_budget" {
  source          = "../modules/budget-alerting"
  budget_name           = "monthly-cost-budget"
  subscription_id = var.subscription_id
  budget_amount   = var.budget_amount
  start_date      = var.start_date
  contact_emails  = var.contact_emails
}
