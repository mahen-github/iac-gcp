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
