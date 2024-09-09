variables "name" {
    description = "name of the cloud sql instance"
    type = string
}

variable "database_verison" {
    description = "database version of the cloud sql instance"
    type = string
}

variable "region" {
    description = "region of the cloud sql instance"
    type = string
}

variable "tier" {
    description = "tier of the cloud sql instance"
    type = string
}

variable "private_network" {
    description = "private network of the cloud sql instance"
    type = string
}

variable "database_name" {
    description = "database name of the cloud sql instance"
    type = string
}

variable "user_name" {
    description = "user name of the cloud sql instance"
    type = string
}

variable "user_password" {
    description = "user password of the cloud sql instance"
    type = string
}

variable "database_flags" {
    description = "database flags of the cloud sql instance"
    type = list(object({
        name = string
        value = string
    }))
    default = []
}

variable "user_labels" {
    description = "user labels of the cloud sql instance"
    type = map(string)
    default = {}
}