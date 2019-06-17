resource "aws_autoscaling_group" "auto_scaling_group" {
  name = "${var.name}"
  max_size = "${var.max_size}"
  min_size = "${var.min_size}"
  launch_configuration = "${var.launch_configuration}"
  health_check_type   = "${var.health_check_type}"
  vpc_zone_identifier = ["${var.vpc_zone_identifier}"]
  enabled_metrics     = "${var.enabled_metrics}"
  lifecycle {
    create_before_destroy = true
  }

  tags = "${var.tags}"
}
###########################
resource "aws_launch_configuration" "launch_config" {
  name                  = "${var.launch_config_name}"
  image_id              = "${var.image_id}"
  instance_type         = "${var.instance_type}"
  security_groups       = ["${var.security_groups}"]
  user_data             = "${var.user_data}"
  key_name              = "${var.key_name}"
  iam_instance_profile  = "${var.iam_instance_profile}"
  root_block_device {
    volume_size = "${var.volume_size}"
    volume_type = "${var.volume_type}"
    delete_on_termination = "${var.delete_on_termination}"
  }
  lifecycle {
    create_before_destroy = true
  }
}
###########################