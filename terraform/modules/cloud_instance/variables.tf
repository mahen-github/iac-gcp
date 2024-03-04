variable "project" {
  description = "project id"
  type        = string
}
variable "location" {
  description = "location where the project belongs to"
  type        = string
  default     = "us-west1"
}

variable "region" {
  description = "The region the instance will sit in. If a region is not provided in the resource definition, the provider region will be used instead."
  type        = string
  default     = "us-west1"
}

variable "app_id" {
  description = "App ID"
  type        = string
}

variable "env" {
  description = "environment "
  type        = string
}

variable "user" {
  description = "User who performed the terraform action"
  type        = string
}

variable "database_version" {
  description = "The MySQL, PostgreSQL or SQL Server version to use"
  type = string
  default = "MYSQL_8_0"
}

variable "database_name" {
  description = "The name of the database in the Cloud SQL instance. This does not include the project ID or instance name"
  type = string
}

variable "sql_user" {
  description = "name of the SQL user"
  type = string
}

variable "sql_user_password" {
  description = "password of the SQL user"
  type = string
}

variable "cloud_instance_name" {
  description = "the name of the cloud sql instance"
  type = string
}

variable "local_ip_address" {
  description = "the ip address of local mac"
  type = string
}

