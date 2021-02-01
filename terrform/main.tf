provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-0010499d417b154b6"
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  tags = {
    "Name" = "thinknyx-kul"
    "Client" = "Ericsson-1"
  }
}

output "public_of_ec2" {
  value = aws_instance.ec2.public_ip
}

output "private_of_ec2" {
  value = aws_instance.ec2.private_ip
}

resource "null_resource" "install_terraform" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.ec2.public_ip
    }
    inline = [
      "wget https://releases.hashicorp.com/terraform/0.14.5/terraform_0.14.5_linux_amd64.zip",
      "sudo apt-get install -y unzip",
      "unzip terraform_0.14.5_linux_amd64.zip",
      "sudo cp terraform /usr/bin && sudo chmod 755 /usr/bin/terraform",
      "terraform --version"
    ]
  }
}

resource "null_resource" "copy_pemfile" {
  provisioner "file" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.ec2.public_ip
    }
    source = "C:/training/ericsson/aws/kul-ericsson-thinknyx.pem"
    destination = "~/kul-ericsson-thinknyx.pem"
  }
}
