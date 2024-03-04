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
