
output "aws_instance_ip" {
  value = module.aws_web.public_ip
}

output "gcp_instance_ip" {
  value = module.gcp_web.nat_ip
}
