provider "aws" {
region = "ap-south-1"
profile = "default"
}


resource "aws_instance"  "webos1" {
ami = "ami-041db4a969fe3eb68"
instance_type = "t2.micro"
security_groups = ["webport-allow"]
key_name = "mumbai"
tags = {
    Name = "jenkinsTask"
 }
connection {
   type = "ssh"
   user = "ec2-user"
   private_key = file("C:/Users/nishant saini/Downloads/mumbai.pem")
   host = aws_instance.webos1.public_ip
}
provisioner "remote-exec" {
  inline = [
    "sudo amazon-linux-extras install epel -y",
    "sudo wget -O /etc/yum.repos.d/jenkins.repo / https://pkg.jenkins.io/redhat-stable/jenkins.repo",
    "sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key",
    "sudo yum upgrade -y",
    "sudo yum install git -y",
    "sudo yum install docker -y",
    "sudo yum install jenkins java-1.8.0-openjdk-devel -y",
    "sudo systemctl start jenkins",
    "sudo systemctl start docker",
    ]

}
}
