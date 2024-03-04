# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


output "app_id" {
  value = var.app_id
}

output "google_storage_bucket" {
  value = {
    bucket = google_storage_bucket_object.default.bucket
    object = google_storage_bucket_object.default.name
    content_type = google_storage_bucket_object.default.content_type
  }
}


output "google_storage_bucket_object" {
  value = {
    bucket = google_storage_bucket_object.default.bucket
  }
}
