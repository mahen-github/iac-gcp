variable "project" {}

variable "app_id" {
  description = "App ID"
  type        = string
}

variable "user" {
  description = "User who performed the terraform action"
  type        = string
}

variable "bucket_name" {
  description = "the name of the object"
  type        = string
}

variable "object_name" {
  description = "the name of the object including the prefix. For example, path/to/sample_file.txt"
  type        = string
}

variable "object_path" {
  description = "absolute path fo the source file"
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "01EBD5-4BA831-AC71D3"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "172929404362"
}


### Cloud SQL Instance starts

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

### Cloud SQL Instance Ends