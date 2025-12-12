resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_sql_database_instance" "pg_demo" {
  name             = "pg-demo-${random_id.db_name_suffix.hex}"
  database_version = var.database_version
  region           = var.region

  settings {
    tier = var.tier

    ip_configuration {
      ipv4_enabled = true

      authorized_networks {
        name  = "allow-all"
        value = "0.0.0.0/0"
      }
    }
  }

  deletion_protection = false # For demo purposes
}

resource "google_sql_user" "postgres_user" {
  name     = "postgres"
  instance = google_sql_database_instance.pg_demo.name
  password = var.db_password
}
