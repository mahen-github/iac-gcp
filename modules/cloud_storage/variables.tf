variable "project" {
  description = "the project"
  type        = string
}
variable "location" {
  description = "location where the project belongs to"
  type        = string
  default     = "us-west1"
}

variable "appId" {
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

variable "bucket_name" {
  description = "the name of the object"
  type        = string
}

variable "storage_class" {
  description = "the storage class for the bucket"
  type        = string
  default     = "STANDARD"
}

variable "object_name" {
  description = "the name of the object including the prefix. For example, path/to/sample_file.txt"
  type        = string
}

variable "object_path" {
  description = "absolute path fo the source file"
  type        = string
}

