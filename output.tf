output "public_ip" {
    value = module.ec2.public_ip
}

output "SG-ID-Output" {
    value = module.sg.SG-ID-Output
}
output "sg-arn" {
  value = module.sg.SG-arn-Output
}