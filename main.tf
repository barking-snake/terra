provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "celes" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.celes.id}"]

  user_data = <<-EOF
              #!/bin/bash
              echo "w0t" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags {
    Name = "celes-terraform-example"
    description = "Example Webserver EC2 instance for Project Celes"
  }
}

resource "aws_security_group" "celes" {
  name = "celes-example-web"

  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "celes-example-web"
    secure = "nope"
    description = "Example security group for Project Celes"
  }
}
