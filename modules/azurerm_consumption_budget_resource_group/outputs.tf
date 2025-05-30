output "budget_id" {
  description = "ID of the budget resource."
  value       = azurerm_consumption_budget_resource_group.budget_rg.id
}

output "budget_name" {
  description = "Name of the budget."
  value       = azurerm_consumption_budget_resource_group.budget_rg.name
}
