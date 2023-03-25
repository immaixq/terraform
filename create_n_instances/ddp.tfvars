
region = "us-east-1"

configuration = [
    {
        "application_name": "cv-ddp-master-node"
        "ami": "ami-0184e674549ab8432",
        "no_of_instances": "1",
        "instance_type": "t3.medium",
        "subnet_id": "{subnet_id}",
        "vpc_security_group_ids": [{vpc_security_group_id}],
        "key_name": "{key_name}"
    },
]