output "app_id" {
  value = module.cloud_storage.app_id
}

output "bucket_name" {
  value = module.cloud_storage.google_storage_bucket
}

output "google_storage_bucket" {
  value = {
    object = module.cloud_storage.google_storage_bucket_object
  }
}
