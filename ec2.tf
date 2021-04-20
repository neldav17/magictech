resource "aws_eip" "vero" {
instance = "vero"
vpc = true
}

resource "aws_instance" "vero" {
ami = "ami-0742b4e673072066f"
instance_type = var.instance_type
associate_public_ip_address = true
#vpc_security_group_ids = [aws_security_group.restorepoint.id]
key_name = "CLassServer"

root_block_device {
volume_type = var.instance_storage_type
volume_size = var.instance_storage
delete_on_termination = true
encrypted = true
}
}
resource "aws_volume_attachment" "vero" {
device_name = "/dev/sdb"
volume_id = "vol-0a226c2f96389864a"
instance_id = "ami-0742b4e673072066f"
force_detach = true
}
