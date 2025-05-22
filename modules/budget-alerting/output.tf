output "budget_id" {
  description = "The ID of the created budget."
  value       = azurerm_consumption_budget_subscription.budget.id
}
