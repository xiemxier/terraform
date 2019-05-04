output "ip_address_public" {
  value = "${aws_instance.example1.public_ip}"
}