locals {
  env = "dev"
}

provider "google" {
  project = var.project
}

module "cloud_storage" {
  source  = "../../modules/cloud_storage"
  project = var.project
  env     = local.env
  app_id   = var.app_id
  bucket_name = var.bucket_name
  object_name = var.object_name
  object_path = var.object_path
  user = var.user
}

module "cloud_instance" {
  source = "../../modules/cloud_instance"
  project = var.project
  env     = local.env
  app_id   = var.app_id
  user = var.user
  cloud_instance_name = var.cloud_instance_name
  database_name = var.database_name
  sql_user = var.sql_user
  sql_user_password =var.sql_user_password
  database_version = var.database_version
  local_ip_address = var.local_ip_address
}