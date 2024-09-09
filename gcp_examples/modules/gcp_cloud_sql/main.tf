resource "gcp_cloud_sql_instance" {
    name = var.name
    database_version = var.database_version
    region = var.region

    setting {
        tier = var.tier

        ip_configuration {
            ipv4_enabled = false
            private_network = var.private_network
        }

        database_flags = var.database_flags

        user_labels = var.user_labels
    }
}

resource "gcp_sql_database" "default_database" {
    name = var.database_name
    instance = gcp_cloud_sql_instance.instance.name
}

resource "gcp_sql_user" "default_user" {
    name = var.user_name
    instance = gcp_cloud_sql_instance.instance.name
    password = var.user_password
}