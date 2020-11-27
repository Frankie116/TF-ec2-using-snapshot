# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/
# output values
# ---------------------------------------------------------------------------------------------------

# 1a-vpc.tf -------------------------------------------------------------
output this-vpc-arn {
  description          = "ARN of the vpc"
  value                = module.my-vpc.vpc_arn
}


# 2a-ec2-choose-ami -----------------------------------------------------
output these-instance-ids {
  description          = "IDs of EC2 instances"
  value                = [aws_instance.my-server.*.id]
}


# 4a-lb-alb.tf ----------------------------------------------------------
output this-public-dns-name {
  description          = "Public DNS name of load balancer"
  value                = aws_lb.my-alb.dns_name
}





