variable alias {
  description = "Alias name to AWS KEY"
  type        = string
}

variable description {
  description = "Description record to KMS key"
  type        = string
  default     = "Default description to KMS key"
}

variable deletion_window_in_days {
  description = "Delection period of key in days"
  type        = number
  default     = 15
}