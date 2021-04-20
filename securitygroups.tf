resource "aws_security_group" "verosg" {
name = "Class-${var.name}"
description = "Managed by Terraform: web-access"
vpc_id = var.vpc_id

ingress {
protocol = "tcp"
from_port = 443
to_port = 443
cidr_blocks = ["0.0.0.0/0"]
description = "Access from Web"
}

ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = [var.app_vpc_cidr]
description = "SSH from ScienceLogic Public IP"
}

ingress {
protocol = "-1"
from_port = 0
to_port = 0
cidr_blocks = [var.app_vpc_cidr]
description = "Allow all traffic from Collectors"
}

ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = [var.app_vpc_cidr]
description = "SSH from Management VPC"
}

ingress {
protocol = "tcp"
from_port = 22
to_port = 22
cidr_blocks = [var.app_vpc_cidr]
description = "SSH from App VPC"
}

egress {
protocol = "-1"
from_port = 0
to_port = 0
cidr_blocks = ["0.0.0.0/0"]
}

lifecycle {
create_before_destroy = true
}
}
