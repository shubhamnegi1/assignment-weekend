module "rds_aurora" {
  source = "./modules/aws/db"
  tags = { 
    Project = "MyProject"
    Scope = "KPMG-test"
  }
  db_name                              = "0040bjktestdb"
  db_engine                            = "aurora-mysql"
  db_instance_class                    = "db.r5.xlarge"
  db_instance_count                    = 3
  master_username                      = "master" # in best practice will use AWS Secret manager!
  master_password                      = "z0040bjkdbPass?2020"
  availability_zones                   = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}
