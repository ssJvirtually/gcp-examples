variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "asia-southeast1"
}

variable "database_version" {
  description = "The database version to use"
  type        = string
  default     = "POSTGRES_15"
}

variable "tier" {
  description = "The machine type to use"
  type        = string
  default     = "db-f1-micro"
}

variable "db_password" {
  description = "The password for the default user"
  type        = string
  sensitive   = true
}
