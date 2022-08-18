module "vpc" {
    source = "./vpc"
    vpc_name = var.vpc_nameM
    vpc_cidr_block = var.vpc_cidr_blockM
    vpc_availability_zones = var.vpc_availability_zonesM
    vpc_private_subnets = var.vpc_private_subnetsM
    vpc_public_subnets = var.vpc_public_subnetsM
}

module "ec2" {
    source = "./ec2"
    sg_id = module.sg

    
}

module "sg" {
    source = "./sg"
    vpcid = module.vpc.vpc_id
  
}