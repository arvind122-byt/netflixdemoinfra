provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0f214d1b3d031dc53"
instance_type = "t2.medium"
key_name = "swiggy"
vpc_security_group_ids = ["sg-0f898150386f708c8"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
