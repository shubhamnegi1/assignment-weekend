module "vpc" {
  source = "./modules/aws/network"
  tags = { 
    Project = "MyProject"
    Scope = "KPMG-test"
  }
  # The vpc,igw,nat,rt all will be taken care here
    vpc_cidr_block = "10.20.0.0/16"
    subnet_cidr_blocks =  ["10.20.0.0/18", "10.20.64.0/18"]
    enable_dns_support = true
    enable_dns_hostnames = true
}