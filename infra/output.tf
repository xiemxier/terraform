output "instance_public_ip" {
  value = "${module.aws_instance.ip_address_public}"
}
output "aws_instance_private_ip" {
  value = "${module.aws_instance.aws_instance_private_ip}"
}
output "aws_instance_ids" {
  value = "${module.aws_instance.aws_instance_id}"
}
