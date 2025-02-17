resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-0813c82c5c737b6d6"]
    instance_type = lookup(var.instance_type, terraform.workspace)
}