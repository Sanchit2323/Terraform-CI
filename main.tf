resource "aws_vpc" "ot_microservices_dev" {
  cidr_block       = "10.0.0.0/25"
  instance_tenancy = "default"
  
  tags = {
    Name = "ot-micro-vpc"
  }
  
  flow_log {
    log_destination      = "arn:aws:logs:us-east-1:123456789012:log-group:my-flow-log-group"
    traffic_type         = "ALL"
    iam_role_arn         = "arn:aws:iam::123456789012:role/my-iam-role"
    log_destination_type = "cloud-watch-logs"
  }
}

