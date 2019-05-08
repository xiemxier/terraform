data "template_file" "user-data" {
  template = "${file("../scripts/user_data.sh")}"
}