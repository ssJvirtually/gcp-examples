output "instance_connection_name" {
  value       = google_sql_database_instance.pg_demo.connection_name
  description = "Connection name for Cloud SQL Proxy"
}

output "public_ip_address" {
  value       = google_sql_database_instance.pg_demo.public_ip_address
  description = "Public IP address of the Cloud SQL instance"
}

output "instance_name" {
  value       = google_sql_database_instance.pg_demo.name
  description = "Name of the Cloud SQL instance"
}
