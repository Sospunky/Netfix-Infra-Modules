module "ec2" {
  # source = "./ec2"
  source = "git::https://github.com/Sospunky/Netfix-Infra-Modules.git//ec2"
  sg_id = module.sg.SG-ID-Output
  ami_idA = var.ami_idB
  instance_typeA = var.instance_typeB
}

module "sg" {
  # source = "./sg"
  source = "git::https://github.com/Sospunky/Netfix-Infra-Modules.git//sg"

  sg_nameA = var.sg_nameB
  
}


