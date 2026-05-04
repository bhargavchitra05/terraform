data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["998105438356"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_instance" "terraform_instance" {
    instance_id = "i-0b5d202d8d74985fc"
}