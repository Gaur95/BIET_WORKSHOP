provider "aws" {
    access_key = "AKIATJPSLP6Q62FYXUWJ"
    secret_key = "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"
    region = "ap-south-1"
  
}

resource "aws_instance" "ak_instance" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"

    security_groups = ["launch-wizard-1"]
    tags = {
    Name = "example-instance"
    }
    user_data = file("userdata.txt")
  
}
output "ip" {
    description = "ip of instance"
    value = aws_instance.ak_instance.public_ip
  
}