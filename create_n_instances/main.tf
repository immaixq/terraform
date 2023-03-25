terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
    required_version = ">= 1.2.0"
}

provider "aws" {
    region = var.region
}

variable "region" {
    type = string
}

locals {
    serverconfig = [
        for server in var.configuration : [
            for i in range(1, server.no_of_instances+1) : {
                # reference to ec2 attribute
                instance_name = "${server.application_name}-${i}"
                ami = server.ami
                instance_type = server.instance_type
                subnet_id = server.subnet_id
                security_groups = server.vpc_security_group_ids
                key_name = server.key_name
            }
        ]
    ]
}

locals {
    instances = flatten(local.serverconfig)
}

resource "aws_instance" "ddp-instance" {
    for_each = { for server in local.instances: server.instance_name => server}

    ami = each.value.ami
    instance_type = each.value.instance_type
    vpc_security_group_ids = each.value.security_groups
    subnet_id = each.value.subnet_id
    key_name = each.value.key_name
    
    tags = {
      Name = "${each.value.instance_name}"
    }
}

output "instances" {
    value = "${aws_instance.ddp-instance}"
}