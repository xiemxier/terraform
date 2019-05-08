data "template_file" "test-user-data" {
  template = "${file("../scripts/user_data.sh")}"
}