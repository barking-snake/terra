variable "aws_rds_dev_pw" {
  description = "Environment variable defines password for intent-db-dev"
}

resource "aws_db_instance" "intent-db-dev" {
  allocated_storage                   = 20
  storage_type                        = "gp2"
  engine                              = "mysql"
  engine_version                      = "5.7.19"
  instance_class                      = "db.t2.micro"
  name                                = "intent"
  username                            = "root"
  password                            = "${var.aws_rds_dev_pw}"
  iam_database_authentication_enabled = "false"
  publicly_accessible                 = "true"
  
  tags = {
    infrastructure_layer = "data"
    environment          = "dev"
  }
}
