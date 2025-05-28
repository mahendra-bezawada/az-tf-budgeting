
variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name."
  type        = string
}

variable "location" {
  description = "Azure region where the resources are deployed."
  type        = string
}

variable "action_group_name" {
  description = "Name of the Azure Monitor Action Group."
  type        = string
}

variable "action_group_short_name" {
  description = "Short name for the action group (12 characters max)."
  type        = string
}

variable "budget_name" {
  description = "Name of the budget."
  type        = string
}

variable "budget_amount" {
  description = "Monthly budget amount in USD."
  type        = number
}

variable "time_grain" {
  description = "Time grain for budget (e.g., Monthly)."
  type        = string
}

variable "start_date" {
  description = "Start date for the budget (YYYY-MM-DDTHH:MM:SSZ)."
  type        = string
}

variable "end_date" {
  description = "End date for the budget (YYYY-MM-DDTHH:MM:SSZ)."
  type        = string
}

variable "filter_tag_name" {
  description = "Tag name used for budget filter."
  type        = string
  default     = null
}

variable "filter_tag_values" {
  description = "List of tag values used for budget filter."
  type        = list(string)
  default     = []
}

variable "notification_1_threshold" {
  type        = number
  description = "Threshold percentage for first notification."
}

variable "notification_1_operator" {
  type        = string
  description = "Operator for first notification (e.g., EqualTo)."
}

variable "notification_1_emails" {
  type        = list(string)
  description = "Emails for first budget notification."
}

variable "notification_1_roles" {
  type        = list(string)
  description = "Roles to notify in first alert (e.g., Owner)."
}

variable "notification_2_threshold" {
  type        = number
  description = "Threshold percentage for second (forecasted) notification."
}

variable "notification_2_operator" {
  type        = string
  description = "Operator for second notification (e.g., GreaterThan)."
}

variable "notification_2_emails" {
  type        = list(string)
  description = "Emails for second budget notification."
}
