resource "aws_security_group" "Pub-SG" {
     name        = var.sg_nameA
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0acd5b1033374abc9"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
 
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
  
  }

  tags = {
    Name = "allow_tls"
  }

}
variable "sg_nameA" {
    default = "SG1"
  
}

output "SG-arn-Output" {
    value = aws_security_group.Pub-SG.arn
}

  
output "SG-ID-Output" {
    value = aws_security_group.Pub-SG.id
}