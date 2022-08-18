resource "aws_security_group" "Pub-SG" {
     name        = "Test"
  description = "Allow TCP inbound traffic"
  vpc_id      = var.vpcid

  ingress {
    description      = "TLS from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
 
  }

  egress {
    from_port        = 80
    to_port          = 80
    protocol         = "-1"
  
  }

  tags = {
    Name = "allow_http"
  }
}

# resource "aws_security_group" "Priv-SG" {
#      name        = var.sg_name
#   description = "Allow TCP inbound traffic"
#   vpc_id      = "vpc-0acd5b1033374abc9"

#   ingress {
#     description      = "TLS from VPC"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
 
#   }

#   egress {
#     from_port        = 80
#     to_port          = 80
#     protocol         = "-1"
  
#   }

#   tags = {
#     Name = "allow_http"
#   }
# }

output "sg_id-Output" {
    value = aws_security_group.Pub-SG.id
}

variable "vpcid" {}