output "instance_name" {
  description = "Name of the Cloud SQL instance"
  value       = gcp_cloud_sql_instance.instance.name
}

output "instance_connection_name" {
  description = "Connection name of the instance"
  value       = gcp_cloud_sql_instance.instance.connection_name
}

output "private_ip_address" {
  description = "Private IP address of the instance"
  value       = gcp_cloud_sql_instance.instance.private_ip_address
}