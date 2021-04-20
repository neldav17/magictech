resource "aws_lb" "classnlb" {
name = "veronlb"
load_balancer_type = "network"

#resource "aws_lb_target_group" "classtg_443" {
#name = "vero"
#port = 443
#protocol = "TCP"
#target_type = "instance"
#vpc_id = var.vpc_id
#}
# tags = merge(
# var.tags,
# {
# Name = "vero"
# }
# )
}

outputs.tf

output "veroclass_lb" {
description = "DNS Name of Vero ClassLoadbalancer"
value = aws_lb.classnlb.dns_name
}
