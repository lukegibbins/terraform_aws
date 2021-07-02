module "ec2-webapp" {
    source = "../modules/ec2"
    instance_type = "t2.nano"
}

# module "ec2-vpc" {
#     source = "../modules/vpc"
# }