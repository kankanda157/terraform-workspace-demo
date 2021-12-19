resource "aws_instance" "name" {
    ami = var.aws_ami_id
    instance_type = "t2.micro"
    count = terraform.workspace == "default" ? 2 : 1

    tags = {
      "Name" = "${terraform.workspace}-Instance-${count.index}"
    }
}