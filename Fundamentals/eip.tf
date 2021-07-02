resource "aws_eip" "EIP_Terraform_Code" {
  instance = aws_instance.EC2_Terraform_Code.id
  vpc = true
}

output "EIP_address" {
    value = "logging => ${aws_eip.EIP_Terraform_Code.public_ip}"
}