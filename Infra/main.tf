module "t2.micro_linux" {
  source = "../module/aws_intances"
  count                   = "${var.count}"
  instance_type           = "${var.instance_type}"
  subnet_id               = "${var.subnet_id}"
  key_name                = "${var.key_name}"
  vpc_security_group_ids  = "${var.vpc_security_group_ids}"
  aws_ami_id              = "${var.aws_ami_id}"
  environment             = "${var.enviroment}"
  tags                    = "${var.tags}"
  iam-role                = "${var.iam-role}"
  #attach service_ec2_001 role to instances to have permission to push data from mongodb to s3 bucket
  user_data               = "${var.user_data}"
  #root volume
  volume_type = "${var.volume_type}"
  volume_size = "${var.volume_size}"
  delete_on_termination = true
  #ebs volume
  ebs_delete_on_termination = true
  ebs_volume_size = "${var.ebs_volume_size}"
  ebs_volume_type = "${var.ebs_volume_type}"
  device_name = "${var.device_name}"
 }