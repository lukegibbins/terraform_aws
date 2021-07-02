variable "ami" {
    default = "ami-063d4ab14480ac177"
}

variable "instance_type" {
    default = ""     
}

variable "key_name" {
    default = "ec2-terraform"
}

variable "ec2_name" {
    default = "EC2_Terraform_Code_Advanced"
}

variable "availability_zone" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}