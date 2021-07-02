resource "aws_instance" "EC2_Terraform_Code" {
    ami = var.ami
    instance_type = "t2.micro"
    tags = {
        Name = "EC2_Terraform_Code"
    }
    key_name = "ec2-terraform"
    user_data     = <<-EOF
                  #!/bin/bash
                  sudo su
                  yum -y install httpd
                  echo "My Apache web server running on a EC2 instance!" >> /var/www/html/index.html
                  sudo systemctl enable httpd
                  sudo systemctl start httpd
                  EOF
                  
    // provisioners need to be inside aws_instance resource
    provisioner "local-exec" {
        command = "echo: printing private ip => ${aws_instance.EC2_Terraform_Code.private_ip} >> private_ip.txt"
    }
}