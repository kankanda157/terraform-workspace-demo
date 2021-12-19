resource "aws_instance" "name" {
    ami = "ami-0dc5785603ad4ff54"
    instance_type = "t2.micro"
    count = "${terraform.workspace == "default" ? 2 : 1}"

    tags = {
      "Name" = "${terraform.workspace}-Instance-${count.index}"
    }
}