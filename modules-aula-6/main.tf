module "ec2" {
  source  = "../modules/ec2"

  ami = data.aws_ami.ubuntu.id
  instance_name = var.instance_name
}