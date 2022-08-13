resource "aws_instance" "web" {
    ami = var.ami_idA
    instance_type = var.instance_typeA
    associate_public_ip_address = true
    vpc_security_group_ids = [var.sg_id]

  
}

variable "ami_idA" {}

variable "instance_typeA" {}

variable "sg_id" {}

output "public_ip" {
    value = aws_instance.web.public_ip
}


