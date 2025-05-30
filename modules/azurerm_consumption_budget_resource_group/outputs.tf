output "budget_id" {
  description = "The ID of the budget resource."
  value       = azurerm_consumption_budget_resource_group.this.id
}

output "budget_name" {
  description = "The name of the budget."
  value       = azurerm_consumption_budget_resource_group.this.name
}
