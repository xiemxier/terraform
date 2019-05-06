output "ip_address_public" {
  value = "${aws_instance.example.*.public_ip}"
}