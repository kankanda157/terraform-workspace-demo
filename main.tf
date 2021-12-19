resource "aws_instance" "name" {
    ami = var.aws_ami_id
    instance_type = var.aws_instance_id
    count = terraform.workspace == "default" ? 2 : 1

    tags = {
      "Name" = "${terraform.workspace}-Instance-${count.index}"
    }
}