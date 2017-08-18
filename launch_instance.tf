provider "aws" {
  access_key = "${var.v_access_key}"
  secret_key = "${var.v_secret_key}"
  region     = "${var.v_region}"
}

resource "aws_instance" "tf-launch-example1a" {
   ami  = "ami-a4c7edb2"
#  ami = "${var.v_ami}"
  instance_type = "t2.micro"
  subnet_id = "subnet-fe24df9a"
  tags = { Name = "asj-tf-ex1a" }

}


resource "aws_instance" "tf-launch-example1b" {
  ami = "ami-a4c7edb2"
  instance_type = "t2.micro"
  subnet_id = "subnet-fe24df9a"
  tags = { Name = "asj-tf-ex1b" }
}
