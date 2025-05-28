variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "action_group_name" {
  description = "Name of the monitor action group"
  type        = string
}

variable "action_group_short_name" {
  description = "Short name for the action group"
  type        = string
}

variable "budget_name" {
  description = "Name of the consumption budget"
  type        = string
}

variable "budget_amount" {
  description = "Amount for the budget"
  type        = number
}

variable "time_grain" {
  description = "Time grain for the budget (Monthly/Quarterly/etc.)"
  type        = string
}

variable "start_date" {
  description = "Start date of the budget period"
  type        = string
}

variable "end_date" {
  description = "End date of the budget period"
  type        = string
}

/*
variable "filter_tag_name" {
  description = "Tag name for budget filtering"
  type        = string
}

variable "filter_tag_values" {
  description = "List of tag values for budget filtering"
  type        = list(string)
}
*/

variable "notification_1_threshold" {
  type        = number
  description = "Threshold for the first notification"
}

variable "notification_1_operator" {
  type        = string
  description = "Operator for the first notification"
}

variable "notification_1_emails" {
  type        = list(string)
  description = "Emails for the first notification"
}

variable "notification_1_roles" {
  type        = list(string)
  description = "Roles for the first notification"
}

variable "notification_2_threshold" {
  type        = number
  description = "Threshold for the second notification"
}

variable "notification_2_operator" {
  type        = string
  description = "Operator for the second notification"
}

variable "notification_2_emails" {
  type        = list(string)
  description = "Emails for the second notification"
}