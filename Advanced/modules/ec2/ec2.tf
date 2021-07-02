resource "aws_instance" "EC2_Terraform_Code" {
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.ec2_name
    }
    key_name = var.key_name
}