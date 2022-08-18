module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
    name = var.vpc_name
    cidr = var.vpc_cidr_block
    azs        = [var.vpc_availability_zones]
    private_subnets     = [var.vpc_public_subnets]
    public_subnets      = [var.vpc_private_subnets]
    enable_dns_hostnames = true
    enable_dns_support = true
  


}
output "vpc_id" {
    value = module.vpc.vpc_id
}

output "pubsub-id" {
    description = "For Anal"
     value = {for vpc_availability_zones in aws_vpc: public_subnets => pubsub-id}

  
}

variable "vpc_name" {}
variable "vpc_cidr_block" {  }
variable "vpc_availability_zones" {}
variable "vpc_private_subnets" {}
variable "vpc_public_subnets" {}

