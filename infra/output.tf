output "instance_public_ip" {
  value = "${module.aws_instance.ip_address_public}"
}