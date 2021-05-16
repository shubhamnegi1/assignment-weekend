module "ec2-instance" {
  source = "./modules/aws/compute"
  tags = { 
    Project = "MyProject"
    Scope = "KPMG-test"
  }
  name = "MyEC2Instance"
  ami_id = "ami-0b0bb3682590e5ccd"
  instance_type = "t3.micro"
  target_subnets ="${module.vpc.private_subnet_id}"
  ec2_user_data = "${base64encode("yum -y install httpd")}"
  ssh_key_pair_name = "my_ssh_key_pair"
  ebs_root_volume_device_name = "/dev/xvda"
  ebs_root_volume_size_gigabytes = "10"
}