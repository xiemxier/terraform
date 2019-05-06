output "aws_instance_ids" {
  value = "${aws_instance.instance_default.*.id}"
}

output "ip_address_public" {
  value = "${aws_instance.instance_default.*.public_ip}"
}

output "aws_instance_private_ip" {
  value = "${aws_instance.instance_default.*.private_ip}"
}
output "aws_private_dns" {
  value = "${aws_instance.instance_default.*.private_dns}"
}