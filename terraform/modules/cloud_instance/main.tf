locals {
  env = "dev"
}

provider "google" {
  project = var.project
  region  = "us-west1"
}

resource "google_sql_database_instance" "cloud_sql_instance" {
  database_version = var.database_version
  region           = var.region
  name = var.cloud_instance_name

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
    # Set the authorized networks to allow access from the specified IP address

    ip_configuration {
      ipv4_enabled    = true
      private_network = ""
      authorized_networks {
        name  = "local-mac111"
        value = var.local_ip_address
      }
    }
  }

  deletion_protection  = "false"
}

resource "google_sql_database" "database" {
  name = var.database_name
  instance = google_sql_database_instance.cloud_sql_instance.name
}

resource "google_sql_user" "users" {
  name     = "quickstart-user"
  instance = google_sql_database_instance.cloud_sql_instance.name
  password = "changeme"
  host = "%"
}

#
#resource "google_compute_instance" "apps" {
#  count        = 8
#  name         = "apps-${count.index + 1}"
#  machine_type = "f1-micro"
#
#  boot_disk {
#    initialize_params {
#      image = "ubuntu-os-cloud/ubuntu-1804-lts"
#    }
#  }
#
#  deletion_protection=false
#
#  network_interface {
#    network = "default"
#
#    access_config {
#      // Ephemeral IP
#    }
#  }
#}
#
#resource "random_id" "db_name_suffix" {
#  byte_length = 4
#}
#
#locals {
#  onprem = ["192.168.1.2", "192.168.2.3"]
#}
#
#resource "google_sql_database_instance" "mysql" {
#  name             = "mysql-instance-${random_id.db_name_suffix.hex}"
#  database_version = "MYSQL_8_0"
#
#  settings {
#    tier = "db-f1-micro"
#
#    ip_configuration {
#
#      dynamic "authorized_networks" {
#        for_each = google_compute_instance.apps
#        iterator = apps
#
#        content {
#          name  = apps.value.name
#          value = apps.value.network_interface.0.access_config.0.nat_ip
#        }
#      }
#
#      dynamic "authorized_networks" {
#        for_each = local.onprem
#        iterator = onprem
#
#        content {
#          name  = "onprem-${onprem.key}"
#          value = onprem.value
#        }
#      }
#    }
#  }
#}
#
