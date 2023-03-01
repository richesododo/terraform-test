variable "aws_account_id" {
  description = "The aws account id for the tf backend creation (e.g. 857026751867)"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "aws_profile" {
  default = "default"
}

# trusted accounts
variable "allowed_users" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = "arn:aws:iam::505610512708:user/sean" // This is the account number of ID account
}

variable "frontend_allowed_users" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = "arn:aws:iam::505610512708:user/sean" // This is the account number of ID account
}

variable "backend_allowed_users" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = "arn:aws:iam::505610512708:user/sean" // This is the account number of ID account
}

variable "data_allowed_users" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = "arn:aws:iam::505610512708:user/rich" // This is the account number of ID account
}

variable "site_allowed_users" {
  description = "The list of aws account ids to allow them to assume roles in this account(e.g. 857026751867)"
  default     = "arn:aws:iam::505610512708:user/rich" // This is the account number of ID account
}

variable "policy_arn" {
  description = "A list of full arn of iam policies to attach this role"
  default     = []
}

variable "session_duration" {
  description = "A value for maximum time of session duration in seconds (default 1h). This setting can have a value from 1 hour to 12 hours"
  default     = "3600"
}

# description
variable "frontend_name" {
  description = "The logical name of role"
  default     = "frontend-role"
}

variable "backend_name" {
  description = "The logical name of role"
  default     = "backend-role"
}

variable "data_engineer_name" {
  description = "The logical name of role"
  default     = "data-engineer-role"
}

variable "site_reliability_engineer_name" {
  description = "The logical name of role"
  default     = "site-reliabilty-engineer-role"
}
variable "stack" {
  description = "Text used to identify stack/environment of infrastructure"
  default     = ["Dev", "QA", "Production"]
}

variable "desc" {
  description = "The extra description of role"
  default     = ""
}