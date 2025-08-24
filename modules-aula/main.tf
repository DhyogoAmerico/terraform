module "ec2-instance_example_complete" {
  source  = "terraform-aws-modules/ec2-instance/aws//examples/complete"
  version = "6.1.0"
}

output "ec2_arn" {
  value = "ec2_complete_arn"
}

output "ec2_availability_zone" {
  value = "ec2_complete_availability_zone"
}