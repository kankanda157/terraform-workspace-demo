variable "aws_region" {
    description = "AWS Region name"
    type = string
}

variable "aws_profile_name" {
    description = "AWS Profile name"
    type = string
    default = "terratest01"
}

variable "aws_ami_id" {
    description = "AWS AMI ID"
    type = string
}

variable "aws_instance_id" {
    description = "AWS Instance Type"
    type = string
}
