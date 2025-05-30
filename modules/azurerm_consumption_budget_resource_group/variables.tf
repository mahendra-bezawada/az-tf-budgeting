variable "name" {
  description = "The name of the budget."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group the budget is for."
  type        = string
}

variable "amount" {
  description = "The amount of the budget."
  type        = number
}

variable "time_grain" {
  description = "The time grain of the budget. values: Monthly, Quarterly, Annually."
  type        = string
  default     = "Monthly"
}

variable "time_period_start" {
  description = "The start date  for the budget."
  type        = string
}

variable "time_period_end" {
  description = "The end date  for the budget."
  type        = string
}

variable "notifications" {
  description = "Map of notifications to configure."
  type = map(object({
    enabled        = bool
    operator       = string
    threshold      = number
    contact_emails = list(string)
  }))
  default = {}
}

variable "filters" {
  description = "Optional filters to limit budget scope."
  type = object({
    resource_groups = list(string)
    resources       = list(string)
  })
  default = {
    resource_groups = []
    resources       = []
  }
}
